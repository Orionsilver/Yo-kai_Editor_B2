#pragma execution_character_set("utf-8")

#include "equipmenttab.h"

#include "dataeditor/biteditor.h"
#include "dataeditor/integereditor.h"
#include "dataeditor/listeditor.h"

EquipmentTab::EquipmentTab(SaveManager* mgr, int num1Offset, int itemCount, QWidget* parent, int sectionId)
    : ListTab(mgr, parent, sectionId)
    , form(new Ui::EquipmentTabForm)
{
    QWidget* w = new QWidget(this);
    form->setupUi(w);
    ui->form->addWidget(w);

    this->setNum1Offset(num1Offset);
    this->setItemsCount(itemCount);
    this->setItemSize(0x14);

    for (int i = 0; i < itemCount; ++i) {
        ui->listWidget->addItem(QString(""));
    }

    /* intert items into combobox */
    foreach (const dataentry_t& it, GameData::getInstance().getData("hackslash_equipment")) {
        form->itemCB->addItem(it.second.value("name"), it.first);
    }
    foreach (const dataentry_t& it, GameData::getInstance().getData("equipment_skill")) {
        form->skill1CB->addItem(it.second.value("name"), it.first);
        form->skill2CB->addItem(it.second.value("name"), it.first);
    }
    form->itemCB->setCurrentIndex(-1);

    /* editors */
    ListEditor* itemE = new ListEditor(this, form->itemLabel, form->itemCB, 0x04, 32);
    this->setPrimaryEditor(itemE);
    this->editors.append(new IntegerEditor(this, form->num1Label, form->num1SB, 0x00, 16, false));
    this->editors.append(new IntegerEditor(this, form->num2Label, form->num2SB, 0x02, 16, false));
    this->editors.append(itemE);
    this->editors.append(new IntegerEditor(this, form->countLabel, form->countSB, 0xA, 8, false));
    this->editors.append(new IntegerEditor(this, form->count2Label, form->count2SB, 0xB, 8, false));
    this->editors.append(new ListEditor(this, form->skill1Label, form->skill1CB, 0xC, 32, false));
    this->editors.append(new ListEditor(this, form->skill2Label, form->skill2CB, 0x10, 32, false));

    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 0));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 1));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 2));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 3));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 4));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 5));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 6));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 7));
}

EquipmentTab::~EquipmentTab()
{
    delete form;
}

void EquipmentTab::setButtonsEnabled(bool s)
{
    ListTab::setButtonsEnabled(s);
    if (this->getItemsCount() <= this->editors.count()) {
        ui->addAllButton->setEnabled(false);
    }
}

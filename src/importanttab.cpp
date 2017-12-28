#include "importanttab.h"

#include "dataeditor/biteditor.h"
#include "dataeditor/integereditor.h"
#include "dataeditor/listeditor.h"

ImportantTab::ImportantTab(SaveManager* mgr, QWidget* parent, int sectionId)
    : ListTab(mgr, parent, sectionId)
    , form(new Ui::ImportantTabForm)
{
    QWidget* w = new QWidget(this);
    form->setupUi(w);
    ui->form->addWidget(w);

    this->setNum1Offset(0x3000);
    this->setItemsCount(GameConfig::HackslashImportantCountMax);
    this->setItemSize(0x14);

    for (int i = 0; i < this->getItemsCount(); ++i) {
        ui->listWidget->addItem(QString(""));
    }

    /* intert items into combobox */
    foreach (const dataentry_t& it, GameData::getInstance().getData("hackslash_important")) {
        form->itemCB->addItem(it.second.value("name"), it.first);
    }
    form->itemCB->setCurrentIndex(-1);

    /* editors */
    ListEditor* itemE = new ListEditor(this, form->itemLabel, form->itemCB, 0x04, 32);
    this->setPrimaryEditor(itemE);
    this->editors.append(new IntegerEditor(this, form->num1Label, form->num1SB, 0x00, 16, false));
    this->editors.append(new IntegerEditor(this, form->num2Label, form->num2SB, 0x02, 16, false));
    this->editors.append(new IntegerEditor(this, form->countLabel, form->countSB, 0x0A, 8, false));
    this->editors.append(itemE);

    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 0));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 1));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 2));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 3));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 4));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 5));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 6));
    this->editors.append(new BitEditor(this, form->flag0CB, 0xB, 7));
}

ImportantTab::~ImportantTab()
{
    delete form;
}

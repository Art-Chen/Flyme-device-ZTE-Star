.class final Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/flyme/DeviceOriginalSettings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 773
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v14, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;>;"
    const v32, 0x7f090829

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 778
    .local v24, "screenTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_0

    .line 779
    # invokes: Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodAndLanguageSettings;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 780
    .local v23, "localeName":Ljava/lang/String;
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 781
    .local v13, "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "phone_language"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 782
    const v32, 0x7f09082c

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 783
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 784
    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 785
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 786
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    .end local v23    # "localeName":Ljava/lang/String;
    :cond_0
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 791
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "spellcheckers_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 792
    const v32, 0x7f090b49

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 793
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 794
    const v32, 0x7f090c1b

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 795
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-static/range {p1 .. p1}, Lcom/flyme/DeviceOriginalSettings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 799
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 800
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "user_dict_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 801
    const v32, 0x7f090845

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 802
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 803
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_1
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 808
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "keyboard_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 809
    const v32, 0x7f09082b

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 810
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 811
    const v32, 0x7f090c28

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 812
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    invoke-static/range {p1 .. p1}, Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v12

    .line 816
    .local v12, "immValues":Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v12}, Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 819
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 820
    .local v6, "currImeName":Ljava/lang/String;
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 821
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "current_input_method"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 822
    const v32, 0x7f090869

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 823
    iput-object v6, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 824
    iput-object v6, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 825
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 826
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    const-string v32, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodManager;

    .line 832
    .local v18, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v12}, Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v19

    .line 833
    .local v19, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v19, :cond_3

    const/16 v17, 0x0

    .line 834
    .local v17, "inputMethodCount":I
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 835
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    .line 837
    .local v16, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v32, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v29

    .line 840
    .local v29, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v27

    .line 841
    .local v27, "subtypeCount":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 842
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/inputmethod/InputMethodSubtype;

    .line 843
    .local v26, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-lez v32, :cond_2

    .line 844
    const/16 v32, 0x2c

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 846
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v28

    .line 849
    .local v28, "subtypeLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 841
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 833
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v17    # "inputMethodCount":I
    .end local v20    # "j":I
    .end local v26    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v27    # "subtypeCount":I
    .end local v28    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    goto :goto_0

    .line 851
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v17    # "inputMethodCount":I
    .restart local v20    # "j":I
    .restart local v27    # "subtypeCount":I
    .restart local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 853
    .local v30, "summary":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v25

    .line 854
    .local v25, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .local v5, "componentName":Landroid/content/ComponentName;
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 858
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 859
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 860
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 861
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 862
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 863
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 867
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v16    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v20    # "j":I
    .end local v25    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v27    # "subtypeCount":I
    .end local v29    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v30    # "summary":Ljava/lang/String;
    :cond_5
    const-string v32, "input"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/input/InputManager;

    .line 869
    .local v15, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v9, 0x0

    .line 871
    .local v9, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v8

    .line 872
    .local v8, "devices":[I
    const/4 v10, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v10, v0, :cond_a

    .line 873
    aget v32, v8, v10

    invoke-static/range {v32 .. v32}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 874
    .local v7, "device":Landroid/view/InputDevice;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v32

    if-nez v32, :cond_6

    invoke-virtual {v7}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v32

    if-nez v32, :cond_7

    .line 872
    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 878
    :cond_7
    const/4 v9, 0x1

    .line 880
    invoke-virtual {v7}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    .line 881
    .local v11, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    invoke-virtual {v15, v11}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v22

    .line 883
    .local v22, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v22, :cond_8

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v21

    .line 887
    .local v21, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_5
    if-eqz v21, :cond_9

    .line 888
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v30

    .line 893
    .restart local v30    # "summary":Ljava/lang/String;
    :goto_6
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 894
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 895
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 896
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 897
    move-object/from16 v0, v30

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 898
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 899
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 883
    .end local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v30    # "summary":Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    goto :goto_5

    .line 890
    .restart local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_9
    const v32, 0x7f090843

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "summary":Ljava/lang/String;
    goto :goto_6

    .line 902
    .end local v7    # "device":Landroid/view/InputDevice;
    .end local v11    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v21    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v22    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v30    # "summary":Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    .line 904
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 905
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "builtin_keyboard_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 906
    const v32, 0x7f090876

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 908
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 909
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_b
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 914
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "voice_input_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 915
    const v32, 0x7f0909a9

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 916
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 917
    const v32, 0x7f090c1c

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 918
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    new-instance v31, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 922
    .local v31, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual/range {v31 .. v31}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_c

    .line 923
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 924
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "tts_settings"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 925
    const v32, 0x7f0909b0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 926
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 927
    const v32, 0x7f090c1d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 928
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_c
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 933
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "pointer_settings_category"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 934
    const v32, 0x7f09083b

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 935
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 936
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 939
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "pointer_speed"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 940
    const v32, 0x7f09083c

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 941
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 942
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    # invokes: Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodAndLanguageSettings;->access$300()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 946
    new-instance v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;

    .end local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 947
    .restart local v13    # "indexable":Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;
    const-string v32, "vibrate_input_devices"

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 948
    const v32, 0x7f09083e

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 949
    const v32, 0x7f09083f

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 950
    const v32, 0x7f09083f

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 951
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/flyme/DeviceOriginalSettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 952
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    :cond_d
    return-object v14
.end method

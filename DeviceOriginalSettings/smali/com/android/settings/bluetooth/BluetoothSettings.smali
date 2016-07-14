.class public final Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;
.super Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 538
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$3;-><init>()V

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/DeviceOriginalSettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$1;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 418
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings$2;-><init>(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 129
    return-void
.end method

.method static synthetic access$002(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static synthetic access$100()Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 70
    sput-object p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    return-object p0
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 292
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 293
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    invoke-virtual {p0, p3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->setFilter(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 296
    if-eqz p4, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 299
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 300
    return-void
.end method

.method private startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 274
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 278
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 280
    :cond_3
    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 281
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method private updateContent(I)V
    .locals 10
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 304
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 306
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 389
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 390
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 391
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 392
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 395
    :cond_1
    :goto_1
    return-void

    .line 308
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 309
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 310
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 312
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    const v0, 0x7f090398

    .line 314
    goto :goto_0

    .line 318
    :cond_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_7

    .line 319
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 323
    :goto_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0904e3

    sget-object v6, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6, v8}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 326
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 328
    .local v2, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_3

    if-gtz v2, :cond_4

    .line 329
    :cond_3
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    :cond_4
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_8

    .line 334
    new-instance v4, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 335
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 339
    :goto_3
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0904e4

    sget-object v6, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v7, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 342
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 344
    .local v1, "numberOfAvailableDevices":I
    iget-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_5

    .line 345
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->startScanning()V

    .line 348
    :cond_5
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_6

    .line 349
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 352
    :cond_6
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090399

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v8}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 355
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 357
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 361
    iget-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v4, :cond_1

    .line 363
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 364
    iput-boolean v9, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    goto/16 :goto_1

    .line 321
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :cond_7
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_2

    .line 337
    .restart local v2    # "numberOfPairedDevices":I
    :cond_8
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 369
    .end local v2    # "numberOfPairedDevices":I
    :pswitch_1
    const v0, 0x7f0903ba

    .line 370
    goto/16 :goto_0

    .line 374
    :pswitch_2
    iget-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-eqz v4, :cond_9

    .line 375
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v4, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v4, v9}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 377
    :cond_9
    const v0, 0x7f0904ee

    .line 378
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    const v0, 0x7f090398

    goto/16 :goto_0

    .line 384
    :pswitch_3
    const v0, 0x7f0903b9

    .line 385
    iput-boolean v9, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 156
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 159
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 535
    const v0, 0x7f090ba8

    return v0
.end method

.method initDevicePreference(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 526
    invoke-virtual {p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 527
    .local v0, "cachedDevice":Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 529
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 133
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 134
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 135
    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 137
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 138
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 140
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    .line 141
    .local v0, "activity":Lcom/flyme/DeviceOriginalSettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getSwitchBar()Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    .line 143
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;

    .line 144
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 145
    return-void

    .line 134
    .end local v0    # "activity":Lcom/flyme/DeviceOriginalSettings/SettingsActivity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "bluetoothState"    # I

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 400
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 401
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 206
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-nez v6, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    move v0, v4

    .line 211
    .local v0, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    .line 212
    .local v2, "isDiscovering":Z
    if-eqz v2, :cond_3

    const v3, 0x7f0904d8

    .line 215
    .local v3, "textId":I
    :goto_2
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_accept_all_files"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 218
    .local v1, "isAcceptAllFilesEnabled":Z
    :goto_3
    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    move v6, v4

    :goto_4
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 221
    const/4 v6, 0x2

    const v7, 0x7f090394

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 224
    const/4 v6, 0x3

    const v7, 0x7f0903ae

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 226
    const/4 v6, 0x4

    const v7, 0x7f090219

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 230
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isAcceptAllFilesEnabled":Z
    .end local v2    # "isDiscovering":Z
    .end local v3    # "textId":I
    :cond_2
    move v0, v5

    .line 210
    goto :goto_1

    .line 212
    .restart local v0    # "bluetoothIsEnabled":Z
    .restart local v2    # "isDiscovering":Z
    :cond_3
    const v3, 0x7f0904d7

    goto :goto_2

    .restart local v3    # "textId":I
    :cond_4
    move v1, v5

    .line 215
    goto :goto_3

    .restart local v1    # "isAcceptAllFilesEnabled":Z
    :cond_5
    move v6, v5

    .line 218
    goto :goto_4
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 151
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 152
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 414
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 415
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 416
    return-void
.end method

.method onDevicePreferenceClick(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 287
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothDevicePreference;)V

    .line 288
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 259
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 237
    :pswitch_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 243
    :pswitch_1
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v1, v3, v4}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 254
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bluetooth_accept_all_files"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 253
    goto :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->pause()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 168
    :cond_0
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 172
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 174
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 175
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f090398

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->updateContent(I)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 407
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 410
    :cond_0
    return-void
.end method

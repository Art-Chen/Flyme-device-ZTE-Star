.class public Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final EXPANDED_DESKTOP_MAPPING:[I

.field private static final LOCKMODE_MAPPING:[I


# instance fields
.field mAdapter:Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Item;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mNewProfileMode:Z

.field mProfile:Landroid/app/Profile;

.field mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->EXPANDED_DESKTOP_MAPPING:[I

    return-void

    .line 112
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 115
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->fillProfileFromCurrentSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->updateProfile()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->rebuildItemList()V

    return-void
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private fillProfileFromCurrentSettings()V
    .locals 4

    .prologue
    .line 347
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/Profile;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 457
    return-void
.end method

.method private generateConnectionOverrideItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 282
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, p1}, Landroid/app/Profile;->getSettingsForConnection(I)Landroid/app/ConnectionSettings;

    move-result-object v0

    .line 283
    .local v0, "settings":Landroid/app/ConnectionSettings;
    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/app/ConnectionSettings;

    .end local v0    # "settings":Landroid/app/ConnectionSettings;
    invoke-direct {v0, p1}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 285
    .restart local v0    # "settings":Landroid/app/ConnectionSettings;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v0}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 287
    :cond_0
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    invoke-direct {v1, p1, v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;-><init>(ILandroid/app/ConnectionSettings;)V

    return-object v1
.end method

.method private generateTriggerItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;
    .locals 2
    .param p1, "whichTrigger"    # I

    .prologue
    .line 300
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-direct {v0, v1, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;-><init>(Landroid/app/Profile;I)V

    return-object v0
.end method

.method private generateVolumeStreamItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 291
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, p1}, Landroid/app/Profile;->getSettingsForStream(I)Landroid/app/StreamSettings;

    move-result-object v0

    .line 292
    .local v0, "settings":Landroid/app/StreamSettings;
    if-nez v0, :cond_0

    .line 293
    new-instance v0, Landroid/app/StreamSettings;

    .end local v0    # "settings":Landroid/app/StreamSettings;
    invoke-direct {v0, p1}, Landroid/app/StreamSettings;-><init>(I)V

    .line 294
    .restart local v0    # "settings":Landroid/app/StreamSettings;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v0}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 296
    :cond_0
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;

    invoke-direct {v1, p1, v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;-><init>(ILandroid/app/StreamSettings;)V

    return-object v1
.end method

.method private openTriggersFragment(I)V
    .locals 7
    .param p1, "openTo"    # I

    .prologue
    .line 909
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 910
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "Profile"

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 911
    const-string v1, "new_profile_mode"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 912
    const-string v1, "current_item"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 914
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/SubSettings;

    .line 915
    .local v0, "pa":Lcom/flyme/DeviceOriginalSettings/SubSettings;
    const-class v1, Lcom/flyme/DeviceOriginalSettings/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090035

    const/4 v4, 0x0

    const/16 v6, 0x3e9

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/DeviceOriginalSettings/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 917
    return-void
.end method

.method private rebuildItemList()V
    .locals 12

    .prologue
    .line 155
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 157
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;

    const v9, 0x7f090025

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ProfileNameItem;

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-direct {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ProfileNameItem;-><init>(Landroid/app/Profile;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-boolean v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v7, :cond_1

    .line 162
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;

    const v9, 0x7f0901d0

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;

    const v9, 0x7f09042b

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    const/4 v9, 0x7

    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Landroid/app/Profile;->getSettingsForConnection(I)Landroid/app/ConnectionSettings;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;-><init>(ILandroid/app/ConnectionSettings;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_2
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/DeviceUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 182
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 187
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 188
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/16 v8, 0x9

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 192
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_4
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 195
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_5
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;

    const v9, 0x7f090031

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;

    const v9, 0x7f090042

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/RingModeItem;

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v9}, Landroid/app/Profile;->getRingMode()Landroid/app/RingModeSettings;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/RingModeItem;-><init>(Landroid/app/RingModeSettings;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AirplaneModeItem;

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v9}, Landroid/app/Profile;->getAirplaneMode()Landroid/app/AirplaneModeSettings;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AirplaneModeItem;-><init>(Landroid/app/AirplaneModeSettings;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/LockModeItem;

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-direct {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/LockModeItem;-><init>(Landroid/app/Profile;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->showAdvancedPreferences(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 213
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;

    const v9, 0x7f090022

    invoke-virtual {p0, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "groupsAdded":I
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getProfileGroups()[Landroid/app/ProfileGroup;

    move-result-object v5

    .line 217
    .local v5, "profileGroups":[Landroid/app/ProfileGroup;
    if-eqz v5, :cond_8

    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_8

    .line 218
    move-object v0, v5

    .local v0, "arr$":[Landroid/app/ProfileGroup;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 221
    .local v4, "profileGroup":Landroid/app/ProfileGroup;
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v4}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getDefaultGroup()Landroid/app/ProfileGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 224
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-direct {v8, v9, v4}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;-><init>(Landroid/app/Profile;Landroid/app/ProfileGroup;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v1, v1, 0x1

    .line 218
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v4    # "profileGroup":Landroid/app/ProfileGroup;
    :cond_7
    if-lez v1, :cond_8

    .line 230
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v10}, Landroid/app/Profile;->getDefaultGroup()Landroid/app/ProfileGroup;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;-><init>(Landroid/app/Profile;Landroid/app/ProfileGroup;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v0    # "arr$":[Landroid/app/ProfileGroup;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_8
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v7}, Landroid/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_a

    .line 235
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;

    invoke-direct {v8}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v1    # "groupsAdded":I
    .end local v5    # "profileGroups":[Landroid/app/ProfileGroup;
    :cond_9
    :goto_1
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v7}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 243
    return-void

    .line 236
    .restart local v1    # "groupsAdded":I
    .restart local v5    # "profileGroups":[Landroid/app/ProfileGroup;
    :cond_a
    if-nez v1, :cond_9

    .line 238
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private requestActiveAppGroupsDialog()V
    .locals 9

    .prologue
    .line 802
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v6}, Landroid/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v5

    .line 804
    .local v5, "notificationGroups":[Landroid/app/NotificationGroup;
    array-length v6, v5

    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 805
    .local v3, "items":[Ljava/lang/CharSequence;
    array-length v6, v5

    new-array v1, v6, [Z

    .line 807
    .local v1, "checked":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 808
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 809
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    aget-object v7, v5, v2

    invoke-virtual {v7}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Profile;->getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    aput-boolean v6, v1, v2

    .line 807
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 811
    :cond_1
    new-instance v4, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;

    invoke-direct {v4, p0, v5}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;[Landroid/app/NotificationGroup;)V

    .line 825
    .local v4, "listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0901d7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0901c6

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 829
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 830
    return-void
.end method

.method private requestAirplaneModeDialog(Landroid/app/AirplaneModeSettings;)V
    .locals 5
    .param p1, "setting"    # Landroid/app/AirplaneModeSettings;

    .prologue
    .line 518
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 523
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/AirplaneModeSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    invoke-virtual {p1}, Landroid/app/AirplaneModeSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 525
    const/4 v2, 0x2

    .line 531
    :cond_0
    :goto_0
    const v3, 0x7f090046

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 532
    new-instance v3, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$6;

    invoke-direct {v3, p0, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$6;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Landroid/app/AirplaneModeSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 558
    return-void

    .line 527
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V
    .locals 5
    .param p1, "setting"    # Landroid/app/ConnectionSettings;

    .prologue
    .line 630
    if-nez p1, :cond_0

    .line 631
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "connection setting cannot be null yo"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 633
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 638
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 639
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 640
    const/4 v2, 0x2

    .line 646
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v3

    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 647
    new-instance v3, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$8;

    invoke-direct {v3, p0, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$8;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Landroid/app/ConnectionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 671
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 673
    return-void

    .line 642
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestFillProfileFromSettingsDialog()V
    .locals 3

    .prologue
    .line 333
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 335
    const v1, 0x7f09032c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    const v1, 0x7f09032b

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$1;

    invoke-direct {v2, p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$1;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 344
    return-void
.end method

.method private requestLockscreenModeDialog()V
    .locals 6

    .prologue
    .line 489
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "lockEntries":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 494
    .local v1, "defaultIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 495
    sget-object v4, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 496
    move v1, v2

    .line 501
    :cond_0
    const v4, 0x7f090043

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 502
    new-instance v4, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$5;

    invoke-direct {v4, p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$5;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 515
    return-void

    .line 494
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private requestMobileConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V
    .locals 5
    .param p1, "setting"    # Landroid/app/ConnectionSettings;

    .prologue
    .line 676
    if-nez p1, :cond_0

    .line 677
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "connection setting cannot be null yo"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 679
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 680
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x5

    .line 684
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 685
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v2

    .line 688
    :cond_1
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v3

    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 689
    new-instance v3, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$9;

    invoke-direct {v3, p0, p1}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$9;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Landroid/app/ConnectionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 708
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 709
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 710
    return-void
.end method

.method private requestProfileName()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 749
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 750
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400c2

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 752
    .local v1, "dialogView":Landroid/view/View;
    const v4, 0x7f10002c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 753
    .local v2, "entry":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 754
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 756
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$12;

    invoke-direct {v6, p0, v2}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$12;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 771
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$13;

    invoke-direct {v4, p0, v0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$13;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 790
    new-instance v4, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$14;

    invoke-direct {v4, p0, v2}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$14;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 798
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 799
    return-void
.end method

.method private requestRemoveProfileDialog()V
    .locals 6

    .prologue
    .line 460
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v1

    .line 461
    .local v1, "current":Landroid/app/Profile;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 464
    const v2, 0x7f09041f

    new-instance v3, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$3;

    invoke-direct {v3, p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$3;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 470
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 486
    :goto_0
    return-void

    .line 474
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09001e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 476
    const v2, 0x7f09032b

    new-instance v3, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$4;

    invoke-direct {v3, p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$4;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 484
    const v2, 0x7f09032c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private requestRingModeDialog(Landroid/app/RingModeSettings;)V
    .locals 6
    .param p1, "setting"    # Landroid/app/RingModeSettings;

    .prologue
    .line 579
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 584
    .local v1, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 585
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 586
    const/4 v1, 0x0

    .line 596
    :cond_0
    :goto_0
    const v4, 0x7f09000c

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 597
    new-instance v4, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$7;

    invoke-direct {v4, p0, p1, v3}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$7;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Landroid/app/RingModeSettings;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 625
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 627
    return-void

    .line 587
    :cond_1
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 588
    const/4 v1, 0x1

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    const/4 v1, 0x2

    goto :goto_0

    .line 593
    :cond_3
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private startProfileGroupActivity(Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;)V
    .locals 6
    .param p1, "item"    # Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;

    .prologue
    const/4 v3, 0x0

    .line 901
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 902
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "ProfileGroup"

    invoke-virtual {p1}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;->getGroupUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v0, "Profile"

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 905
    const-class v0, Lcom/flyme/DeviceOriginalSettings/profiles/ProfileGroupConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 906
    return-void
.end method

.method private updateProfile()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 319
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 324
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 325
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 571
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 572
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    .line 574
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->rebuildItemList()V

    .line 576
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    .line 141
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "new_profile_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    .line 145
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter;

    .line 146
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->rebuildItemList()V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->setHasOptionsMenu(Z)V

    .line 149
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()V

    .line 152
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 253
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v0, :cond_0

    .line 254
    const v0, 0x7f0901c7

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02004b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 261
    const/4 v0, 0x2

    const v1, 0x7f090020

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 266
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 835
    const v1, 0x7f040060

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 837
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    .line 838
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 839
    iget-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v1, :cond_0

    .line 840
    const v1, 0x7f1000fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$16;

    invoke-direct {v2, p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$16;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    const v1, 0x7f1000fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$17;

    invoke-direct {v2, p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$17;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    :goto_0
    return-object v0

    .line 858
    :cond_0
    const v1, 0x7f1000fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 865
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Item;

    .line 867
    .local v1, "itemAtPosition":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/Item;
    instance-of v2, v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AirplaneModeItem;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 868
    check-cast v0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AirplaneModeItem;

    .line 869
    .local v0, "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AirplaneModeItem;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AirplaneModeItem;->getSettings()Landroid/app/AirplaneModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestAirplaneModeDialog(Landroid/app/AirplaneModeSettings;)V

    .line 898
    .end local v0    # "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AirplaneModeItem;
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    instance-of v2, v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/LockModeItem;

    if-eqz v2, :cond_2

    .line 871
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestLockscreenModeDialog()V

    goto :goto_0

    .line 872
    :cond_2
    instance-of v2, v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/RingModeItem;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 873
    check-cast v0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/RingModeItem;

    .line 874
    .local v0, "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/RingModeItem;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/RingModeItem;->getSettings()Landroid/app/RingModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestRingModeDialog(Landroid/app/RingModeSettings;)V

    goto :goto_0

    .line 875
    .end local v0    # "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/RingModeItem;
    :cond_3
    instance-of v2, v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 876
    check-cast v0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;

    .line 877
    .local v0, "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;->getConnectionType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 878
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Landroid/app/ConnectionSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestMobileConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V

    goto :goto_0

    .line 880
    :cond_4
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Landroid/app/ConnectionSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V

    goto :goto_0

    .line 882
    .end local v0    # "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ConnectionOverrideItem;
    :cond_5
    instance-of v2, v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 883
    check-cast v0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;

    .line 884
    .local v0, "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;->getStreamType()I

    move-result v2

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;->getSettings()Landroid/app/StreamSettings;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestVolumeDialog(ILandroid/app/StreamSettings;)V

    goto :goto_0

    .line 885
    .end local v0    # "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;
    :cond_6
    instance-of v2, v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/ProfileNameItem;

    if-eqz v2, :cond_7

    .line 886
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestProfileName()V

    goto :goto_0

    .line 887
    :cond_7
    instance-of v2, v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;

    if-eqz v2, :cond_8

    move-object v0, v1

    .line 888
    check-cast v0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;

    .line 889
    .local v0, "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;->getTriggerType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->openTriggersFragment(I)V

    goto :goto_0

    .line 890
    .end local v0    # "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/TriggerItem;
    :cond_8
    instance-of v2, v1, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 891
    check-cast v0, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;

    .line 892
    .local v0, "item":Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;->getGroupUuid()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_9

    .line 893
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestActiveAppGroupsDialog()V

    goto :goto_0

    .line 895
    :cond_9
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->startProfileGroupActivity(Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/AppGroupItem;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 278
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 272
    :pswitch_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestRemoveProfileDialog()V

    goto :goto_0

    .line 275
    :pswitch_1
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()V

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 248
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 305
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 307
    iget-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v2, :cond_0

    .line 308
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "desc":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 311
    .local v1, "descPadding":I
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 312
    const v2, 0x7f0901e5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 313
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 315
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "descPadding":I
    :cond_0
    return-void
.end method

.method public requestVolumeDialog(ILandroid/app/StreamSettings;)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "streamSettings"    # Landroid/app/StreamSettings;

    .prologue
    const/4 v8, 0x0

    .line 714
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 715
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/item/VolumeStreamItem;->getNameForStream(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 717
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 718
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 719
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04004a

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 720
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f100041

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 721
    .local v4, "seekBar":Landroid/widget/SeekBar;
    const v6, 0x7f1000bf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 722
    .local v3, "override":Landroid/widget/CheckBox;
    invoke-virtual {p2}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 723
    new-instance v6, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$10;

    invoke-direct {v6, p0, v4}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$10;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 729
    invoke-virtual {p2}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 730
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 731
    invoke-virtual {p2}, Landroid/app/StreamSettings;->getValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 732
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 733
    const v6, 0x104000a

    new-instance v7, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$11;

    invoke-direct {v7, p0, v4, p2, v3}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$11;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Landroid/app/StreamSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 744
    const/high16 v6, 0x1040000

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 745
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 746
    return-void
.end method

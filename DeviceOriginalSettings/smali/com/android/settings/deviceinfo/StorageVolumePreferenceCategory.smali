.class public Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# instance fields
.field private mFormatPreference:Landroid/preference/Preference;

.field private mItemApps:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 88
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 507
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 125
    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 126
    invoke-static {p1, p2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 129
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 130
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 132
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    return-void

    .line 132
    :cond_0
    const v0, 0x7f0907cc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 119
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "colorRes"    # I

    .prologue
    .line 137
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .param p1, "excluding"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 580
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 581
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 583
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 586
    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 472
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;->measure()V

    .line 473
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 417
    .local v4, "total":J
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 418
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 417
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;J)V
    .locals 6
    .param p1, "pref"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 461
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 462
    invoke-direct {p0, p2, p3}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {p1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 464
    .local v0, "order":I
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 468
    .end local v0    # "order":I
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 9

    .prologue
    const v8, 0x7f0906b4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 283
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v4, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const/4 v3, 0x0

    .line 289
    .local v3, "titleResId":I
    const/4 v2, 0x0

    .line 291
    .local v2, "summaryResId":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 295
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "state":Ljava/lang/String;
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 298
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    const v5, 0x7f0906a1

    invoke-virtual {v4, v5}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 303
    :goto_1
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 305
    :cond_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 307
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 308
    const v3, 0x7f090227

    .line 309
    const v2, 0x7f090228

    .line 320
    :goto_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 321
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 323
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 324
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 325
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 372
    :goto_3
    iget-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v4, :cond_10

    const-string v4, "mtp"

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ptp"

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 374
    :cond_3
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 375
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 377
    :cond_4
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    :cond_5
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 382
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 383
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 300
    :cond_6
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    const v5, 0x7f0906a0

    invoke-virtual {v4, v5}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 311
    :cond_7
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 312
    const v3, 0x7f09022e

    .line 313
    const v2, 0x7f09022f

    goto :goto_2

    .line 316
    :cond_8
    const v3, 0x7f0906ab

    .line 317
    const v2, 0x7f0906ac

    goto/16 :goto_2

    .line 327
    :cond_9
    const-string v4, "unmounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "nofs"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "unmountable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 329
    :cond_a
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 331
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 332
    const v3, 0x7f09022b

    .line 333
    const v2, 0x7f09022c

    .line 344
    :goto_4
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    :goto_5
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 335
    :cond_b
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 336
    const v3, 0x7f090232

    .line 337
    const v2, 0x7f090233

    goto :goto_4

    .line 340
    :cond_c
    const v3, 0x7f0906ae

    .line 341
    const v2, 0x7f0906af

    goto :goto_4

    .line 348
    :cond_d
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 350
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 351
    const v3, 0x7f09022b

    .line 352
    const v2, 0x7f09022d

    .line 363
    :goto_6
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 354
    :cond_e
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 355
    const v3, 0x7f090232

    .line 356
    const v2, 0x7f090234

    goto :goto_6

    .line 359
    :cond_f
    const v3, 0x7f0906ae

    .line 360
    const v2, 0x7f0906ad

    goto :goto_6

    .line 385
    :cond_10
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 386
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 388
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 389
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v5, 0x7f09022a

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 391
    :cond_11
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v4, v0}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 392
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v5, 0x7f090231

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 395
    :cond_12
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v5, 0x7f0906b1

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 25

    .prologue
    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 143
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    .line 147
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 152
    .local v9, "currentUser":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v15

    .line 153
    .local v15, "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_2

    const/16 v18, 0x1

    .line 155
    .local v18, "showUsers":Z
    :goto_0
    new-instance v22, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    move-object/from16 v22, v0

    const/16 v23, -0x2

    invoke-virtual/range {v22 .. v23}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 159
    const v22, 0x7f0906a2

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    .line 160
    const v22, 0x7f0906a0

    const v23, 0x7f080027

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    const v22, 0x7f0906a4

    const v23, 0x7f080028

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    .line 165
    const v22, 0x7f0906a7

    const v23, 0x7f08002a

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    .line 166
    const v22, 0x7f0906a8

    const v23, 0x7f08002b

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    .line 167
    const v22, 0x7f0906a6

    const v23, 0x7f080029

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    .line 168
    const v22, 0x7f0906aa

    const v23, 0x7f08002c

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    .line 169
    const v22, 0x7f0906a9

    const v23, 0x7f08002d

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v22, v0

    const-string v23, "cache"

    invoke-virtual/range {v22 .. v23}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v22

    if-eqz v22, :cond_3

    :cond_0
    const/16 v17, 0x1

    .line 174
    .local v17, "showDetails":Z
    :goto_1
    if-eqz v17, :cond_5

    .line 175
    if-eqz v18, :cond_1

    .line 176
    new-instance v22, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 179
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 186
    if-eqz v18, :cond_5

    .line 187
    new-instance v22, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v23, 0x7f0906c6

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 189
    const/4 v7, 0x0

    .line 190
    .local v7, "count":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 191
    .local v12, "info":Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "count":I
    .local v8, "count":I
    rem-int/lit8 v22, v7, 0x2

    if-nez v22, :cond_4

    const v5, 0x7f08002e

    .line 193
    .local v5, "colorRes":I
    :goto_3
    new-instance v21, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v22

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 195
    .local v21, "userPref":Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 197
    .end local v8    # "count":I
    .restart local v7    # "count":I
    goto :goto_2

    .line 148
    .end local v5    # "colorRes":I
    .end local v7    # "count":I
    .end local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    .end local v15    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v17    # "showDetails":Z
    .end local v18    # "showUsers":Z
    .end local v21    # "userPref":Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v10

    .line 149
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "Failed to get current user"

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 153
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v15    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 173
    .restart local v18    # "showUsers":Z
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 191
    .restart local v8    # "count":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "info":Landroid/content/pm/UserInfo;
    .restart local v17    # "showDetails":Z
    :cond_4
    const v5, 0x7f08002f

    goto :goto_3

    .line 201
    .end local v8    # "count":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v14

    .line 202
    .local v14, "isRemovable":Z
    :goto_4
    const/4 v13, 0x1

    .line 204
    .local v13, "isAccessible":Z
    new-instance v22, Landroid/preference/Preference;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 208
    const/16 v20, 0x0

    .line 209
    .local v20, "titleResId":I
    const/16 v19, 0x0

    .line 211
    .local v19, "summaryResId":I
    if-eqz v14, :cond_6

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 215
    const v20, 0x7f090227

    .line 216
    const v19, 0x7f090228

    .line 229
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 232
    if-eqz v13, :cond_6

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    const/4 v4, 0x1

    .line 238
    .local v4, "allowFormat":Z
    :goto_6
    if-eqz v4, :cond_7

    .line 239
    new-instance v22, Landroid/preference/Preference;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 243
    const v20, 0x7f090229

    .line 244
    const v19, 0x7f09022a

    .line 255
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 263
    .local v16, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 264
    new-instance v22, Landroid/preference/Preference;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOrder(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0906bc

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setTitle(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0906bd

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    :cond_8
    :goto_8
    return-void

    .line 201
    .end local v4    # "allowFormat":Z
    .end local v13    # "isAccessible":Z
    .end local v14    # "isRemovable":Z
    .end local v16    # "pm":Landroid/content/pm/IPackageManager;
    .end local v19    # "summaryResId":I
    .end local v20    # "titleResId":I
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 218
    .restart local v13    # "isAccessible":Z
    .restart local v14    # "isRemovable":Z
    .restart local v19    # "summaryResId":I
    .restart local v20    # "titleResId":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 219
    const v20, 0x7f09022e

    .line 220
    const v19, 0x7f09022f

    goto/16 :goto_5

    .line 223
    :cond_b
    const v20, 0x7f0906ab

    .line 224
    const v19, 0x7f0906ac

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x112003b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    goto/16 :goto_5

    .line 237
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 246
    .restart local v4    # "allowFormat":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/flyme/DeviceOriginalSettings/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 247
    const v20, 0x7f090230

    .line 248
    const v19, 0x7f090231

    goto/16 :goto_7

    .line 251
    :cond_e
    const v20, 0x7f0906b0

    .line 252
    const v19, 0x7f0906b1

    goto/16 :goto_7

    .line 269
    .restart local v16    # "pm":Landroid/content/pm/IPackageManager;
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    .line 273
    :catch_1
    move-exception v22

    goto :goto_8
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 525
    const/4 v1, 0x0

    .line 530
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_1

    .line 532
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/flyme/DeviceOriginalSettings/MediaFormat;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 534
    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 555
    :cond_0
    :goto_0
    return-object v1

    .line 535
    :cond_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_2

    .line 536
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/flyme/DeviceOriginalSettings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 538
    :cond_2
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_3

    .line 539
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 541
    :cond_3
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_4

    .line 542
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "audio/mp3"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 544
    :cond_4
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_5

    .line 545
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 548
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 549
    :cond_5
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 551
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 552
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 497
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 493
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 501
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 477
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 478
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 482
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 483
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isUsbConnected"    # Z
    .param p2, "usbFunction"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-boolean p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 487
    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 488
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 489
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 7
    .param p1, "totalSize"    # J
    .param p3, "availSize"    # J

    .prologue
    .line 401
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    iput-wide p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 406
    sub-long v0, p1, p3

    .line 408
    .local v0, "usedSize":J
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;->clear()V

    .line 409
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 410
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;->commit()V

    .line 412
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 413
    return-void
.end method

.method public updateDetails(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 17
    .param p1, "details"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 427
    .local v7, "showDetails":Z
    :goto_0
    if-nez v7, :cond_2

    .line 458
    :goto_1
    return-void

    .line 426
    .end local v7    # "showDetails":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 430
    .restart local v7    # "showDetails":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v11}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;->clear()V

    .line 435
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;J)V

    .line 437
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v2

    .line 439
    .local v2, "dcimSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v3}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;J)V

    .line 441
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    sget-object v16, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v8

    .line 444
    .local v8, "musicSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;J)V

    .line 446
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 447
    .local v4, "downloadsSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v5}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;J)V

    .line 449
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;J)V

    .line 450
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;J)V

    .line 452
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;

    .line 453
    .local v10, "userPref":Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v14, v10, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v11, v14}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    .line 454
    .local v12, "userSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12, v13}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 457
    .end local v10    # "userPref":Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageItemPreference;
    .end local v12    # "userSize":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v11}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method

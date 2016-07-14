.class public Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# static fields
.field private static final USB_FUNCTION_DEFAULT:Ljava/lang/String;


# instance fields
.field private mCharging:Landroid/preference/CheckBoxPreference;

.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private mSDCard:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private operateInprogress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "ro.sys.usb.default.config"

    const-string v1, "mtp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->operateInprogress:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 76
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$1;-><init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$2;-><init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->operateInprogress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->updateUsbFunctionState()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->enableUms()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 117
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 120
    :cond_0
    const v2, 0x7f060058

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 121
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 123
    const-string v2, "usb_mtp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v2, "usb_ptp"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 125
    const-string v2, "usb_charging"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v2, "usb_sdcard"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    .line 128
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->isMassStorageEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    const-string v2, "UsbSettings"

    const-string v3, "createPreferenceHierarchy mass_storage enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 134
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 136
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 137
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 140
    :cond_2
    return-object v0
.end method

.method private enableUms()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 288
    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->operateInprogress:Z

    .line 289
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 290
    const-string v0, "mass_storage"

    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method private isMassStorageEnabled()Z
    .locals 6

    .prologue
    .line 106
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 107
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 108
    .local v3, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    const/4 v5, 0x1

    .line 112
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :goto_1
    return v5

    .line 107
    .restart local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isPrimaryMassStorage()Z
    .locals 3

    .prologue
    .line 282
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 283
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 284
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->removeDialog(I)V

    .line 317
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->showDialog(I)V

    .line 318
    return-void
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 5
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    const-string v1, "mtp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 228
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    const-string v1, "UsbSettings"

    const-string v2, "USB is locked down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 231
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 232
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 241
    :goto_1
    return-void

    .line 205
    .end local v0    # "um":Landroid/os/UserManager;
    :cond_0
    const-string v1, "ptp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 208
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 210
    :cond_1
    const-string v1, "mass_storage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 213
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 214
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v1, "charging"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 219
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 223
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 224
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 233
    .restart local v0    # "um":Landroid/os/UserManager;
    :cond_4
    iget-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->operateInprogress:Z

    if-nez v1, :cond_5

    .line 235
    const-string v1, "UsbSettings"

    const-string v2, "USB Normal Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    .line 238
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private updateUsbFunctionState()V
    .locals 3

    .prologue
    .line 96
    const-string v1, "persist.sys.usb.config"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "functions":Ljava/lang/String;
    sget-object v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 147
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 148
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 295
    packed-switch p1, :pswitch_data_0

    .line 312
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 297
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090235

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090236

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907d1

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$4;

    invoke-direct {v2, p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$4;-><init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09041f

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$3;

    invoke-direct {v2, p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$3;-><init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 176
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 248
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v4

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 254
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->USB_FUNCTION_DEFAULT:Ljava/lang/String;

    .line 260
    .local v0, "function":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    const-string v0, "mtp"

    .line 274
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->operateInprogress:Z

    .line 275
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 276
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    const-string v0, "ptp"

    goto :goto_1

    .line 264
    :cond_4
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 265
    const-string v0, "charging"

    goto :goto_1

    .line 266
    :cond_5
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->isPrimaryMassStorage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 268
    invoke-direct {p0, v4}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->showDialogInner(I)V

    goto :goto_0

    .line 270
    :cond_6
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mSDCard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    const-string v0, "mass_storage"

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 184
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 188
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 191
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->updateUsbFunctionState()V

    .line 197
    return-void
.end method

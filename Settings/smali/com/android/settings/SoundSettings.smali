.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SoundSettings$Receiver;,
        Lcom/android/settings/SoundSettings$H;,
        Lcom/android/settings/SoundSettings$SettingsObserver;,
        Lcom/android/settings/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dolbyOnlyAvailablePlugHeadphone:Ljava/lang/Boolean;

.field private headsetState:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultProfileNames:[Ljava/lang/String;

.field private mDolbyDSProfile:Landroid/preference/Preference;

.field private mDolbyLaunchApp:Landroid/preference/Preference;

.field private mDsClient:Landroid/dolby/DsClient;

.field private mDsClientConnected:Z

.field private final mDsListener:Landroid/dolby/IDsClientEvents;

.field private final mHandler:Lcom/android/settings/SoundSettings$H;

.field private final mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mIncreasingRing:Landroid/preference/TwoStatePreference;

.field private mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

.field private final mIncreasingRingVolumeCallback:Lcom/android/settings/notification/IncreasingRingVolumePreference$Callback;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/DefaultRingtonePreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/android/settings/SoundSettings$Receiver;

.field private mRingPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/android/settings/SoundSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

.field private mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/android/settings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SoundSettings;->TAG:Ljava/lang/String;

    .line 901
    new-instance v0, Lcom/android/settings/SoundSettings$6;

    invoke-direct {v0}, Lcom/android/settings/SoundSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 118
    new-instance v0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/SoundSettings;Lcom/android/settings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    .line 119
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/android/settings/notification/IncreasingRingVolumePreference$Callback;

    .line 127
    new-instance v0, Lcom/android/settings/SoundSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SoundSettings$H;-><init>(Lcom/android/settings/SoundSettings;Lcom/android/settings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Lcom/android/settings/SoundSettings$H;

    .line 128
    new-instance v0, Lcom/android/settings/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$SettingsObserver;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mSettingsObserver:Lcom/android/settings/SoundSettings$SettingsObserver;

    .line 129
    new-instance v0, Lcom/android/settings/SoundSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SoundSettings$Receiver;-><init>(Lcom/android/settings/SoundSettings;Lcom/android/settings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Lcom/android/settings/SoundSettings$Receiver;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SoundSettings;->mRingerMode:I

    .line 159
    new-instance v0, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mDsListener:Landroid/dolby/IDsClientEvents;

    .line 205
    new-instance v0, Lcom/android/settings/SoundSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$3;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 629
    new-instance v0, Lcom/android/settings/SoundSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$4;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 872
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Lcom/android/settings/SoundSettings$H;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/SoundSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/SoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 85
    invoke-static {p0, p1, p2}, Lcom/android/settings/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateNotificationPreferenceState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/SoundSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/SoundSettings;->mDsClientConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/SoundSettings;)Landroid/dolby/DsClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateDolbyStateUI()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/settings/SoundSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/SoundSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/settings/SoundSettings;->headsetState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/SoundSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/settings/SoundSettings;->headsetState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/SoundSettings;)Lcom/android/settings/notification/IncreasingRingVolumePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    return-object v0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 543
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 545
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 546
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 548
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 549
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 558
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/android/settings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initDolby(Landroid/preference/PreferenceCategory;)V
    .locals 4
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v3, 0x0

    .line 440
    const-string v1, "sound_dolby_ddp"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    .line 441
    const-string v1, "sound_dolby_ddp"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    .line 442
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 443
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    const v2, 0x7f0400e0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 444
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 446
    const-string v1, "sound_dolby_ds_profile"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyDSProfile:Landroid/preference/Preference;

    .line 448
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyDSProfile:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 449
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyDSProfile:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDolbyDSProfile:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 455
    new-instance v1, Landroid/dolby/DsClient;

    invoke-direct {v1}, Landroid/dolby/DsClient;-><init>()V

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;

    .line 456
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDsListener:Landroid/dolby/IDsClientEvents;

    invoke-virtual {v1, v2}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 457
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 461
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDefaultProfileNames:[Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const v2, 0x7f090cf3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 463
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f090cf4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 464
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v2, 0x2

    const v3, 0x7f090cf5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 465
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v2, 0x3

    const v3, 0x7f090cf6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 466
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v2, 0x4

    const v3, 0x7f090cf7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 467
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v2, 0x5

    const v3, 0x7f090cf8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 469
    return-void
.end method

.method private initIncreasingRing(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v1, 0x0

    .line 700
    const-string v0, "increasing_ring"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    .line 702
    const-string v0, "increasing_ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/IncreasingRingVolumePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    .line 705
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_2

    .line 706
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 708
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 712
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    .line 719
    :cond_1
    :goto_0
    return-void

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/android/settings/notification/IncreasingRingVolumePreference$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/IncreasingRingVolumePreference;->setCallback(Lcom/android/settings/notification/IncreasingRingVolumePreference$Callback;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 12
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 595
    const-string v6, "ringtone"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    .line 597
    .local v1, "phoneRingtonePreference":Lcom/android/settings/DefaultRingtonePreference;
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    if-nez v6, :cond_1

    .line 598
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 599
    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    .line 622
    :cond_0
    :goto_0
    const-string v6, "notification_ringtone"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 623
    return-void

    .line 601
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    .line 602
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 604
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 605
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 606
    const-string v6, "sounds"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 607
    .local v3, "soundCategory":Landroid/preference/PreferenceCategory;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 608
    new-instance v2, Lcom/android/settings/DefaultRingtonePreference;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v11}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 610
    .local v2, "ringtonePreference":Lcom/android/settings/DefaultRingtonePreference;
    const v6, 0x7f09030b

    new-array v7, v10, [Ljava/lang/Object;

    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/SoundSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 611
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/android/settings/DefaultRingtonePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 612
    invoke-virtual {v2, v0}, Lcom/android/settings/DefaultRingtonePreference;->setSubId(I)V

    .line 613
    invoke-virtual {v2, v9}, Lcom/android/settings/DefaultRingtonePreference;->setOrder(I)V

    .line 614
    invoke-virtual {v2, v10}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 615
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 616
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 619
    .end local v0    # "i":I
    .end local v2    # "ringtonePreference":Lcom/android/settings/DefaultRingtonePreference;
    .end local v3    # "soundCategory":Landroid/preference/PreferenceCategory;
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 724
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 725
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 726
    sget-object v0, Lcom/android/settings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 735
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateVibrateWhenRinging()V

    .line 736
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/SoundSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/SoundSettings$5;-><init>(Lcom/android/settings/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 506
    .local v0, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 511
    .end local v0    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :goto_0
    return-object v0

    .line 507
    .restart local v0    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 508
    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-virtual {v0, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    goto :goto_0
.end method

.method private isDsConsumerAppPresent()Z
    .locals 4

    .prologue
    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.dolby.LAUNCH_DS_APP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 419
    .local v1, "p":Landroid/content/pm/PackageManager;
    const/16 v3, 0x200

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 421
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 627
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 774
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 775
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 776
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 790
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 779
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 780
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 781
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c53

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 784
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private unbindDsClient()V
    .locals 2

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mDsClientConnected:Z

    if-eqz v0, :cond_1

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mDsClientConnected:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateDolbyStateUI()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 333
    :cond_1
    return-void
.end method

.method private updateDolbyStateUI()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const v10, 0x7f0400e0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 338
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/settings/SoundSettings;->mDsClientConnected:Z

    if-eqz v6, :cond_5

    .line 339
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 340
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    const v7, 0x7f0400df

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 342
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyDSProfile:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 345
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6}, Landroid/dolby/DsClient;->getDsOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 346
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6}, Landroid/dolby/DsClient;->getSelectedProfile()I

    move-result v3

    .line 347
    .local v3, "profile":I
    const/4 v4, 0x0

    .line 348
    .local v4, "profileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6}, Landroid/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "profileNames":[Ljava/lang/String;
    if-eqz v5, :cond_0

    if-ltz v3, :cond_0

    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 350
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v4, v6, v3

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 355
    .local v0, "activity":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SoundDolbyProfilePreference;->getCustomModifyFlag(Landroid/content/Context;)I

    move-result v1

    .line 357
    .local v1, "cmf":I
    const/4 v6, 0x4

    if-ne v6, v3, :cond_3

    .line 358
    and-int/lit8 v6, v1, 0x1

    if-ne v9, v6, :cond_1

    .line 359
    aget-object v4, v5, v3

    .line 367
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyDSProfile:Landroid/preference/Preference;

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0    # "activity":Landroid/content/Context;
    .end local v1    # "cmf":I
    .end local v3    # "profile":I
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "profileNames":[Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->dolbyOnlyAvailablePlugHeadphone:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/settings/SoundSettings;->headsetState:I

    if-nez v6, :cond_2

    .line 389
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    const v7, 0x7f090cfb

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 390
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 391
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 394
    :cond_2
    return-void

    .line 361
    .restart local v0    # "activity":Landroid/content/Context;
    .restart local v1    # "cmf":I
    .restart local v3    # "profile":I
    .restart local v4    # "profileName":Ljava/lang/String;
    .restart local v5    # "profileNames":[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x5

    if-ne v6, v3, :cond_1

    .line 362
    const/4 v6, 0x2

    and-int/lit8 v7, v1, 0x2

    if-ne v6, v7, :cond_1

    .line 363
    :try_start_1
    aget-object v4, v5, v3

    goto :goto_0

    .line 370
    .end local v0    # "activity":Landroid/content/Context;
    .end local v1    # "cmf":I
    .end local v3    # "profile":I
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "profileNames":[Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyDSProfile:Landroid/preference/Preference;

    const v7, 0x7f090cf2

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 371
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    const v7, 0x7f090cf2

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->unbindDsClient()V

    goto :goto_1

    .line 379
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 380
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 382
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyDSProfile:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 383
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyDSProfile:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 530
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 531
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    :goto_0
    return-void

    .line 532
    :cond_0
    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 533
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mRingPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 534
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    const v3, 0x1040772

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/SoundSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mRingPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 539
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 534
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateNotificationPreferenceState()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 754
    const-string v3, "notification_volume"

    const/4 v4, 0x5

    const v5, 0x1080320

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 758
    iget-boolean v3, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    if-eqz v3, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volume_link_notification"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 762
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v3, :cond_0

    .line 763
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 766
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 769
    .end local v0    # "enabled":Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 759
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_3
    move v1, v2

    .line 763
    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x1080320

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 520
    return-void

    .line 515
    :cond_0
    iget v0, p0, Lcom/android/settings/SoundSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, 0x1080321

    goto :goto_0

    :cond_1
    const v0, 0x108031f

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 524
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/settings/SoundSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    iput v0, p0, Lcom/android/settings/SoundSettings;->mRingerMode:I

    .line 526
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "subId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 654
    if-nez p0, :cond_1

    .line 655
    sget-object v0, Lcom/android/settings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    :goto_0
    return-object v7

    .line 659
    :cond_1
    if-ne p1, v0, :cond_2

    if-gtz p2, :cond_3

    .line 660
    :cond_2
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 664
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_1
    const v0, 0x1040594

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 666
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_4

    .line 667
    const v0, 0x1040592

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 662
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .end local v7    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_1

    .line 669
    .restart local v7    # "summary":Ljava/lang/CharSequence;
    :cond_4
    const/4 v6, 0x0

    .line 671
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 673
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 679
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 680
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 681
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 689
    :cond_6
    if-eqz v6, :cond_0

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 675
    :cond_7
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 684
    :catch_0
    move-exception v0

    .line 689
    if-eqz v6, :cond_0

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 686
    :catch_1
    move-exception v0

    .line 689
    if-eqz v6, :cond_0

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 748
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 751
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    .line 228
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 229
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    .line 231
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "vibrator"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 233
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-nez v6, :cond_0

    .line 234
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 237
    :cond_0
    const v6, 0x7f06004c

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 239
    const-string v6, "volumes"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 240
    .local v5, "volumes":Landroid/preference/PreferenceCategory;
    const-string v6, "sounds"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 241
    .local v3, "sounds":Landroid/preference/PreferenceCategory;
    const-string v6, "vibrate"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 243
    .local v4, "vibrate":Landroid/preference/PreferenceCategory;
    const-string v6, "dolby"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 246
    .local v1, "dolby":Landroid/preference/PreferenceCategory;
    const-string v6, "media_volume"

    const/4 v7, 0x3

    const v8, 0x1080323

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 248
    const-string v6, "alarm_volume"

    const/4 v7, 0x4

    const v8, 0x1080314

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 250
    iget-boolean v6, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    if-eqz v6, :cond_2

    .line 251
    const-string v6, "ring_volume"

    const/4 v7, 0x2

    const v8, 0x1080320

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mRingPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 254
    const-string v6, "volume_link_notification"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    .line 261
    :goto_0
    const-string v6, "cmhw"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CmHardwareManager;

    .line 263
    .local v0, "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    const/16 v6, 0x400

    invoke-virtual {v0, v6}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 264
    const-string v6, "vibration_intensity"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 265
    .local v2, "preference":Landroid/preference/Preference;
    if-eqz v2, :cond_1

    .line 266
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 271
    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->initIncreasingRing(Landroid/preference/PreferenceCategory;)V

    .line 272
    invoke-direct {p0, v4}, Lcom/android/settings/SoundSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 274
    invoke-direct {p0, v1}, Lcom/android/settings/SoundSettings;->initDolby(Landroid/preference/PreferenceCategory;)V

    .line 277
    const-string v6, "manage_notification_access"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 278
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->refreshNotificationListeners()V

    .line 279
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateRingerMode()V

    .line 280
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateEffectsSuppressor()V

    .line 281
    return-void

    .line 257
    .end local v0    # "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    :cond_2
    const-string v6, "ring_volume"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    const-string v6, "volume_link_notification"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 321
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 322
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->unbindDsClient()V

    .line 323
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 402
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 403
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSettingsObserver:Lcom/android/settings/SoundSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings$SettingsObserver;->register(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Lcom/android/settings/SoundSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings$Receiver;->register(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->dolbyOnlyAvailablePlugHeadphone:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 412
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 483
    iget-boolean v1, p0, Lcom/android/settings/SoundSettings;->mDsClientConnected:Z

    if-eqz v1, :cond_0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDsClient:Landroid/dolby/DsClient;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/dolby/DsClient;->setDsOn(Z)V

    .line 486
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateDolbyStateUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->unbindDsClient()V

    goto :goto_0

    .line 492
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyDSProfile:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 493
    iget-boolean v1, p0, Lcom/android/settings/SoundSettings;->mDsClientConnected:Z

    if-eqz v1, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateDolbyStateUI()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDolbyLaunchApp:Landroid/preference/Preference;

    if-ne v1, p1, :cond_1

    .line 426
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->isDsConsumerAppPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dolby.LAUNCH_DS_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V

    .line 430
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    .line 432
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 475
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 285
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 286
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->refreshNotificationListeners()V

    .line 287
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateNotificationPreferenceState()V

    .line 289
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSettingsObserver:Lcom/android/settings/SoundSettings$SettingsObserver;

    invoke-virtual {v5, v4}, Lcom/android/settings/SoundSettings$SettingsObserver;->register(Z)V

    .line 290
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mReceiver:Lcom/android/settings/SoundSettings$Receiver;

    invoke-virtual {v5, v4}, Lcom/android/settings/SoundSettings$Receiver;->register(Z)V

    .line 291
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateRingOrNotificationPreference()V

    .line 292
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateEffectsSuppressor()V

    .line 293
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 294
    .local v3, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 299
    .end local v3    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SoundSettings;->dolbyOnlyAvailablePlugHeadphone:Ljava/lang/Boolean;

    .line 300
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->dolbyOnlyAvailablePlugHeadphone:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 301
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .local v0, "headsetFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    .line 309
    .local v2, "isHeadsetOn":Z
    sget-object v5, Lcom/android/settings/SoundSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume  isHeadsetOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-ne v2, v4, :cond_2

    :goto_1
    iput v4, p0, Lcom/android/settings/SoundSettings;->headsetState:I

    .line 315
    .end local v0    # "headsetFilter":Landroid/content/IntentFilter;
    .end local v2    # "isHeadsetOn":Z
    :cond_1
    return-void

    .line 310
    .restart local v0    # "headsetFilter":Landroid/content/IntentFilter;
    .restart local v2    # "isHeadsetOn":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

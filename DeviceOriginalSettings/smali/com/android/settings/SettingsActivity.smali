.class public Lcom/flyme/DeviceOriginalSettings/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/flyme/DeviceOriginalSettings/ButtonBarHandler;


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/flyme/DeviceOriginalSettings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeActivitiesCount:I

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNfcProfileCallback:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileTagCallback;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    sput-boolean v3, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 259
    const/16 v0, 0x42

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/flyme/DeviceOriginalSettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/flyme/DeviceOriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/flyme/DeviceOriginalSettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/flyme/DeviceOriginalSettings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/flyme/DeviceOriginalSettings/sim/SimSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/flyme/DeviceOriginalSettings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/flyme/DeviceOriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/flyme/DeviceOriginalSettings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/flyme/DeviceOriginalSettings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/flyme/DeviceOriginalSettings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/flyme/DeviceOriginalSettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/flyme/DeviceOriginalSettings/voice/VoiceInputSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/flyme/DeviceOriginalSettings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/flyme/DeviceOriginalSettings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/flyme/DeviceOriginalSettings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/flyme/DeviceOriginalSettings/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/flyme/DeviceOriginalSettings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/flyme/DeviceOriginalSettings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/flyme/DeviceOriginalSettings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/flyme/DeviceOriginalSettings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/flyme/DeviceOriginalSettings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/flyme/DeviceOriginalSettings/UsageAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/flyme/DeviceOriginalSettings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/flyme/DeviceOriginalSettings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/flyme/DeviceOriginalSettings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/flyme/DeviceOriginalSettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/flyme/DeviceOriginalSettings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/flyme/DeviceOriginalSettings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/flyme/DeviceOriginalSettings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/flyme/DeviceOriginalSettings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/flyme/DeviceOriginalSettings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/flyme/DeviceOriginalSettings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/flyme/DeviceOriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/flyme/DeviceOriginalSettings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/flyme/DeviceOriginalSettings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/flyme/DeviceOriginalSettings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/flyme/DeviceOriginalSettings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/flyme/DeviceOriginalSettings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/flyme/DeviceOriginalSettings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/flyme/DeviceOriginalSettings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/flyme/DeviceOriginalSettings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/flyme/DeviceOriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/flyme/DeviceOriginalSettings/notification/OtherSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/flyme/DeviceOriginalSettings/quicklaunch/QuickLaunchSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/flyme/DeviceOriginalSettings/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/flyme/DeviceOriginalSettings/profiles/ProfilesSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/flyme/DeviceOriginalSettings/cyanogenmod/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/flyme/DeviceOriginalSettings/notification/NotificationManagerSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/flyme/DeviceOriginalSettings/lockscreen/LockScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/flyme/DeviceOriginalSettings/livedisplay/LiveDisplay;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 329
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 226
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 336
    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mBatteryPresent:Z

    .line 337
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$1;-><init>(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/flyme/DeviceOriginalSettings/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/flyme/DeviceOriginalSettings/search/DynamicIndexableContentMonitor;

    .line 370
    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 379
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$2;-><init>(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 393
    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 394
    iput v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mHomeActivitiesCount:I

    return-void

    .line 226
    nop

    :array_0
    .array-data 4
        0x7f1002d0
        0x7f1002d1
        0x7f1002d2
        0x7f1002d6
        0x7f1002d3
        0x7f1002d8
        0x7f1002da
        0x7f1002db
        0x7f1002dc
        0x7f1002df
        0x7f1002de
        0x7f1002e0
        0x7f1002f2
        0x7f1002eb
        0x7f1002e3
        0x7f1002e6
        0x7f1002ee
        0x7f1002e4
        0x7f1002f3
        0x7f1002e5
        0x7f1002ec
        0x7f1002ef
        0x7f1002f0
        0x7f1002f8
        0x7f1002f1
        0x7f1002f5
        0x7f1002e7
        0x7f1002e9
        0x7f100088
        0x7f1002ed
    .end array-data
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/SettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method private buildDashboardCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 994
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 995
    const v0, 0x7f060013

    invoke-direct {p0, v0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;)V

    .line 996
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->updateTilesList(Ljava/util/List;)V

    .line 997
    return-void
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 674
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1318
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1320
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1326
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1321
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1322
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 1324
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 851
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 863
    :cond_0
    :goto_0
    return-object v0

    .line 853
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 856
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    :cond_3
    const-class v1, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 431
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 433
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 434
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 494
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v2

    .line 498
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 499
    sget-object v3, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 498
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 490
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadCategoriesFromResource(ILjava/util/List;)V
    .locals 26
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1007
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;>;"
    invoke-static/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->showAdvancedPreferences(Landroid/content/Context;)Z

    move-result v16

    .line 1009
    .local v16, "showAdvancedPreferences":Z
    const/4 v14, 0x0

    .line 1011
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 1012
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 1016
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1020
    :cond_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1021
    .local v12, "nodeName":Ljava/lang/String;
    const-string v22, "dashboard-categories"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 1022
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v20    # "type":I
    :catch_0
    move-exception v7

    .line 1160
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "Error parsing categories"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v22

    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v22

    .line 1027
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v12    # "nodeName":Ljava/lang/String;
    .restart local v20    # "type":I
    :cond_3
    const/4 v6, 0x0

    .line 1029
    .local v6, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    .line 1031
    .local v13, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_1e

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v13, :cond_1e

    .line 1032
    :cond_5
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1036
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1037
    const-string v22, "dashboard-category"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 1038
    new-instance v5, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;

    invoke-direct {v5}, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;-><init>()V

    .line 1040
    .local v5, "category":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;
    sget-object v22, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 1042
    .local v15, "sa":Landroid/content/res/TypedArray;
    const/16 v22, 0x1

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v5, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;->id:J

    .line 1046
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v19

    .line 1048
    .local v19, "tv":Landroid/util/TypedValue;
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 1049
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 1050
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v5, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;->titleRes:I

    .line 1055
    :cond_6
    :goto_1
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 1057
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 1059
    .local v8, "innerDepth":I
    :cond_7
    :goto_2
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_1c

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v8, :cond_1c

    .line 1060
    :cond_8
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 1064
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1065
    .local v10, "innerNodeName":Ljava/lang/String;
    const-string v22, "dashboard-tile"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 1066
    new-instance v18, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;

    invoke-direct/range {v18 .. v18}, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;-><init>()V

    .line 1068
    .local v18, "tile":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;
    sget-object v22, Lcom/flyme/DeviceOriginalSettings/R$styleable;->Preference:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 1069
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v19

    .line 1070
    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v22, v0

    const/16 v23, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 1071
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v22, v0

    if-eqz v22, :cond_12

    const/16 v21, 0x1

    .line 1073
    .local v21, "value":Z
    :goto_3
    if-nez v16, :cond_9

    if-nez v21, :cond_a

    :cond_9
    if-eqz v16, :cond_13

    if-nez v21, :cond_13

    :cond_a
    const/16 v17, 0x1

    .line 1075
    .local v17, "skipAdvanced":Z
    :goto_4
    if-nez v17, :cond_7

    .line 1080
    .end local v17    # "skipAdvanced":Z
    .end local v21    # "value":Z
    :cond_b
    sget-object v22, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 1082
    const/16 v22, 0x1

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->id:J

    .line 1085
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v19

    .line 1087
    if-eqz v19, :cond_c

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 1088
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 1089
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->titleRes:I

    .line 1094
    :cond_c
    :goto_5
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v19

    .line 1096
    if-eqz v19, :cond_d

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 1097
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 1098
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->summaryRes:I

    .line 1103
    :cond_d
    :goto_6
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->iconRes:I

    .line 1105
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1107
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 1109
    sget-object v22, Lcom/flyme/DeviceOriginalSettings/R$styleable;->DashboardTile:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 1110
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    .line 1112
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 1114
    if-nez v6, :cond_e

    .line 1115
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1118
    .restart local v6    # "curBundle":Landroid/os/Bundle;
    :cond_e
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 1120
    .local v9, "innerDepth2":I
    :cond_f
    :goto_7
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_18

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v9, :cond_18

    .line 1121
    :cond_10
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 1125
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1126
    .local v11, "innerNodeName2":Ljava/lang/String;
    const-string v22, "extra"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const-string v23, "extra"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1128
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 1161
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "category":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;
    .end local v6    # "curBundle":Landroid/os/Bundle;
    .end local v8    # "innerDepth":I
    .end local v9    # "innerDepth2":I
    .end local v10    # "innerNodeName":Ljava/lang/String;
    .end local v11    # "innerNodeName2":Ljava/lang/String;
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v13    # "outerDepth":I
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .end local v18    # "tile":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;
    .end local v19    # "tv":Landroid/util/TypedValue;
    .end local v20    # "type":I
    :catch_1
    move-exception v7

    .line 1162
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "Error parsing categories"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1052
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "category":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;
    .restart local v6    # "curBundle":Landroid/os/Bundle;
    .restart local v12    # "nodeName":Ljava/lang/String;
    .restart local v13    # "outerDepth":I
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "tv":Landroid/util/TypedValue;
    .restart local v20    # "type":I
    :cond_11
    :try_start_4
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1071
    .restart local v8    # "innerDepth":I
    .restart local v10    # "innerNodeName":Ljava/lang/String;
    .restart local v18    # "tile":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1073
    .restart local v21    # "value":Z
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1091
    .end local v21    # "value":Z
    :cond_14
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 1100
    :cond_15
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 1130
    .restart local v9    # "innerDepth2":I
    .restart local v11    # "innerNodeName2":Ljava/lang/String;
    :cond_16
    const-string v22, "intent"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v14, v4}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_7

    .line 1134
    :cond_17
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 1138
    .end local v11    # "innerNodeName2":Ljava/lang/String;
    :cond_18
    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v22

    if-lez v22, :cond_19

    .line 1139
    move-object/from16 v0, v18

    iput-object v6, v0, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1140
    const/4 v6, 0x0

    .line 1144
    :cond_19
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->id:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x7f1002d3

    cmp-long v22, v22, v24

    if-nez v22, :cond_1a

    invoke-static/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1145
    :cond_1a
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;->addTile(Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;)V

    goto/16 :goto_2

    .line 1149
    .end local v9    # "innerDepth2":I
    .end local v18    # "tile":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;
    :cond_1b
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1153
    .end local v10    # "innerNodeName":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1155
    .end local v5    # "category":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;
    .end local v8    # "innerDepth":I
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .end local v19    # "tv":Landroid/util/TypedValue;
    :cond_1d
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1164
    :cond_1e
    if-eqz v14, :cond_1f

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1166
    :cond_1f
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 1343
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1344
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1406
    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    .line 1408
    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1409
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1411
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1414
    :cond_0
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 715
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 716
    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 717
    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitle(I)V

    .line 721
    :goto_0
    const/4 v1, 0x0

    .line 727
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 719
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 725
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 732
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 733
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 734
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 738
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 741
    :cond_0
    return-void

    .line 736
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 678
    const-string v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 679
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 680
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 681
    iput v3, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitleResId:I

    .line 683
    const-string v5, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 685
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 687
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 689
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 690
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 691
    const/4 v5, -0x1

    iput v5, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 693
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 697
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v5, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 700
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitleResId:I

    .line 701
    const-string v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 703
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 702
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method public static showAdvancedPreferences(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 1446
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 965
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 966
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 969
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 970
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 971
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f100210

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 972
    if-eqz p7, :cond_1

    .line 973
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 975
    :cond_1
    if-eqz p4, :cond_2

    .line 976
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 978
    :cond_2
    if-lez p5, :cond_4

    .line 979
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 983
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 984
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 985
    return-object v0

    .line 980
    :cond_4
    if-eqz p6, :cond_3

    .line 981
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1386
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1399
    :goto_0
    return-void

    .line 1389
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f100210

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1390
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1391
    check-cast v8, Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    .line 1397
    :goto_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1398
    iput-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 1393
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f090c0a

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    goto :goto_1
.end method

.method private updateHomeSettingTiles(Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;)Z
    .locals 6
    .param p1, "tile"    # Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1281
    const-string v4, "home_prefs"

    invoke-virtual {p0, v4, v3}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1282
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "do_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1313
    :goto_0
    return v2

    .line 1287
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v4

    iput v4, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1288
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mHomeActivitiesCount:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 1293
    sget-boolean v4, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->sShowNoHomeNotice:Z

    if-eqz v4, :cond_1

    .line 1294
    const/4 v4, 0x0

    sput-boolean v4, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1295
    invoke-static {p0}, Lcom/flyme/DeviceOriginalSettings/dashboard/NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v2, v3

    .line 1297
    goto :goto_0

    .line 1302
    :cond_2
    iget-object v3, p1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 1303
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1305
    :cond_3
    iget-object v3, p1, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v4, "show"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "do_show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1307
    :catch_0
    move-exception v0

    .line 1309
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTilesList(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1169
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "show"

    sget-object v18, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v19, "eng"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1173
    .local v12, "showDev":Z
    const-string v16, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1174
    .local v15, "um":Landroid/os/UserManager;
    const-string v16, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 1176
    .local v10, "pm":Landroid/os/PowerManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    .line 1177
    .local v13, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v13, :cond_16

    .line 1179
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;

    .line 1182
    .local v2, "category":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;
    iget-wide v0, v2, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 1183
    .local v7, "id":I
    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v16

    add-int/lit8 v8, v16, -0x1

    .line 1184
    .local v8, "n":I
    :goto_1
    if-ltz v8, :cond_15

    .line 1186
    invoke-virtual {v2, v8}, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;->getTile(I)Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;

    move-result-object v14

    .line 1187
    .local v14, "tile":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;
    const/4 v11, 0x0

    .line 1188
    .local v11, "removeTile":Z
    iget-wide v0, v14, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 1189
    const v16, 0x7f1002d7

    move/from16 v0, v16

    if-eq v7, v0, :cond_0

    const v16, 0x7f1002d9

    move/from16 v0, v16

    if-eq v7, v0, :cond_0

    const v16, 0x7f1002e2

    move/from16 v0, v16

    if-eq v7, v0, :cond_0

    const v16, 0x7f1002e1

    move/from16 v0, v16

    if-ne v7, v0, :cond_4

    .line 1192
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/flyme/DeviceOriginalSettings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1193
    const/4 v11, 0x1

    .line 1266
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1268
    const/4 v11, 0x1

    .line 1271
    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_3

    .line 1272
    invoke-virtual {v2, v8}, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;->removeTile(I)V

    .line 1274
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 1275
    goto :goto_1

    .line 1195
    :cond_4
    const v16, 0x7f1002d1

    move/from16 v0, v16

    if-ne v7, v0, :cond_5

    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.hardware.wifi"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1198
    const/4 v11, 0x1

    goto :goto_2

    .line 1200
    :cond_5
    const v16, 0x7f1002d2

    move/from16 v0, v16

    if-ne v7, v0, :cond_6

    .line 1202
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.hardware.bluetooth"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1203
    const/4 v11, 0x1

    goto :goto_2

    .line 1205
    :cond_6
    const v16, 0x7f1002d4

    move/from16 v0, v16

    if-ne v7, v0, :cond_8

    .line 1206
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.hardware.telephony"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 1207
    const/4 v11, 0x1

    goto :goto_2

    .line 1208
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 1209
    const/4 v11, 0x1

    goto :goto_2

    .line 1211
    :cond_8
    const v16, 0x7f1002d5

    move/from16 v0, v16

    if-ne v7, v0, :cond_9

    .line 1212
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_1

    .line 1213
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1215
    :cond_9
    const v16, 0x7f1002d6

    move/from16 v0, v16

    if-ne v7, v0, :cond_a

    .line 1217
    const-string v16, "network_management"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    .line 1220
    .local v9, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v9}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    if-nez v16, :cond_1

    .line 1221
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1226
    .end local v9    # "netManager":Landroid/os/INetworkManagementService;
    :cond_a
    const v16, 0x7f1002e3

    move/from16 v0, v16

    if-ne v7, v0, :cond_b

    .line 1229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mBatteryPresent:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 1230
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1232
    :cond_b
    const v16, 0x7f1002e7

    move/from16 v0, v16

    if-ne v7, v0, :cond_c

    .line 1233
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->updateHomeSettingTiles(Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1234
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1236
    :cond_c
    const v16, 0x7f1002e5

    move/from16 v0, v16

    if-ne v7, v0, :cond_10

    .line 1237
    const-string v16, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserManager;->getUserCount()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_f

    const/4 v4, 0x1

    .line 1240
    .local v4, "hasMultipleUsers":Z
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v16

    if-nez v16, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1244
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1237
    .end local v4    # "hasMultipleUsers":Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_3

    .line 1246
    :cond_10
    const v16, 0x7f1002f5

    move/from16 v0, v16

    if-ne v7, v0, :cond_11

    .line 1247
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.software.print"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 1249
    .local v5, "hasPrintingSupport":Z
    if-nez v5, :cond_1

    .line 1250
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1252
    .end local v5    # "hasPrintingSupport":Z
    :cond_11
    const v16, 0x7f1002f7

    move/from16 v0, v16

    if-ne v7, v0, :cond_13

    .line 1253
    if-eqz v12, :cond_12

    const-string v16, "no_debugging_features"

    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1255
    :cond_12
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1257
    :cond_13
    const v16, 0x7f1002f6

    move/from16 v0, v16

    if-ne v7, v0, :cond_1

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d000d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1260
    .local v3, "forceHide":Z
    if-nez v3, :cond_14

    invoke-virtual {v10}, Landroid/os/PowerManager;->hasPowerProfiles()Z

    move-result v16

    if-nez v16, :cond_1

    if-eqz v12, :cond_14

    sget-object v16, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v17, "user"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1262
    :cond_14
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1177
    .end local v3    # "forceHide":Z
    .end local v11    # "removeTile":Z
    .end local v14    # "tile":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1223
    .restart local v9    # "netManager":Landroid/os/INetworkManagementService;
    .restart local v11    # "removeTile":Z
    .restart local v14    # "tile":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;
    :catch_0
    move-exception v16

    goto/16 :goto_2

    .line 1277
    .end local v2    # "category":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;
    .end local v7    # "id":I
    .end local v8    # "n":I
    .end local v9    # "netManager":Landroid/os/INetworkManagementService;
    .end local v11    # "removeTile":Z
    .end local v14    # "tile":Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardTile;
    :cond_16
    return-void
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 937
    invoke-virtual {p0, p2, p3}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 938
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->finish()V

    .line 939
    return-void
.end method

.method public getDashboardCategories(Z)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 826
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 827
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 830
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 831
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 832
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 834
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 835
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 839
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 840
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 843
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 837
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 843
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSwitchBar()Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 818
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 819
    sget-object v1, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 821
    :goto_1
    return v1

    .line 818
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1403
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitleFromBackStack()I

    .line 710
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1364
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 441
    invoke-static {p0}, Lcom/flyme/DeviceOriginalSettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/flyme/DeviceOriginalSettings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/search/Index;->update()V

    .line 442
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 506
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getMetaData()V

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 512
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 516
    :cond_0
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 520
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v19 .. v19}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mIsShortcut:Z

    .line 525
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 526
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 528
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lcom/flyme/DeviceOriginalSettings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mIsShowingDashboard:Z

    .line 533
    const-class v2, Lcom/flyme/DeviceOriginalSettings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    const/16 v20, 0x1

    .line 537
    .local v20, "isSubSettings":Z
    :goto_1
    if-eqz v20, :cond_3

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getThemeResId()I

    move-result v22

    .line 540
    .local v22, "themeResId":I
    const v2, 0x7f0a004f

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    const v2, 0x7f0a0051

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    .line 542
    const v2, 0x7f0a004a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTheme(I)V

    .line 546
    .end local v22    # "themeResId":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_c

    const v2, 0x7f0400e1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setContentView(I)V

    .line 549
    const v2, 0x7f100210

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 553
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_4

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/flyme/DeviceOriginalSettings/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/search/Index;->update()V

    .line 557
    :cond_4
    if-eqz p1, :cond_d

    .line 560
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 561
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 563
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 565
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 567
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;>;"
    if-eqz v16, :cond_5

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitleFromBackStack()I

    .line 573
    :cond_5
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 574
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplaySearch:Z

    .line 575
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 607
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardCategory;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_6

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 612
    :cond_6
    const v2, 0x7f100211

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSwitchBar:Lcom/flyme/DeviceOriginalSettings/widget/SwitchBar;

    .line 615
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 617
    const v2, 0x7f100197

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 618
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_9

    .line 619
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 621
    const v2, 0x7f100198

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 622
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$3;-><init>(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    const v2, 0x7f100199

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 629
    .local v21, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$4;-><init>(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    const v2, 0x7f10004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$5;-><init>(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 645
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 646
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 653
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 654
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 655
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 656
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 662
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 663
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 668
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v21    # "skipButton":Landroid/widget/Button;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 669
    return-void

    .line 522
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v20    # "isSubSettings":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 533
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 546
    .restart local v20    # "isSubSettings":Z
    :cond_c
    const v2, 0x7f0400e2

    goto/16 :goto_2

    .line 578
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_10

    .line 581
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_e

    .line 582
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 583
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplaySearch:Z

    .line 591
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 593
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 594
    .local v4, "initialArguments":Landroid/os/Bundle;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 584
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_e
    if-eqz v20, :cond_f

    .line 585
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 586
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 588
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 589
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 598
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 600
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplaySearch:Z

    .line 601
    const v2, 0x7f090c09

    move-object/from16 v0, p0

    iput v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitleResId:I

    .line 602
    const-class v2, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 650
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v21    # "skipButton":Landroid/widget/Button;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 659
    :cond_12
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 455
    iget-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplaySearch:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 485
    :goto_0
    return v2

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 460
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f110006

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 463
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 465
    .local v1, "query":Ljava/lang/String;
    const v2, 0x7f10030d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 466
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 468
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v2, :cond_2

    :cond_1
    move v2, v3

    .line 469
    goto :goto_0

    .line 472
    :cond_2
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    if-eqz v2, :cond_3

    .line 473
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v3}, Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 476
    :cond_3
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 477
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 478
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 480
    iget-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v2, :cond_4

    .line 481
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 483
    :cond_4
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v2, v4

    .line 485
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 808
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 810
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 813
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1377
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1378
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1379
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->revertToInitialFragment()V

    .line 1382
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1369
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1370
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1372
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1430
    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1431
    const-string v1, "android.nfc.extra.TAG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 1432
    .local v0, "detectedTag":Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNfcProfileCallback:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileTagCallback;

    if-eqz v1, :cond_0

    .line 1433
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNfcProfileCallback:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileTagCallback;

    invoke-interface {v1, v0}, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileTagCallback;->onTagRead(Landroid/nfc/Tag;)V

    .line 1438
    .end local v0    # "detectedTag":Landroid/nfc/Tag;
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 800
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 802
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 803
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/flyme/DeviceOriginalSettings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/search/DynamicIndexableContentMonitor;->unregister()V

    .line 804
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 411
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 412
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/flyme/DeviceOriginalSettings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    const v3, 0x7f090461

    .line 420
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 422
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_1
    const v3, 0x7f09045f

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1356
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1357
    const/4 v0, 0x0

    .line 1359
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1349
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1350
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/flyme/DeviceOriginalSettings/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 772
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 774
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 775
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_0

    .line 776
    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 777
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->invalidateCategories(Z)V

    .line 780
    :cond_0
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity$6;-><init>(Lcom/flyme/DeviceOriginalSettings/SettingsActivity;)V

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 786
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 789
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 791
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/flyme/DeviceOriginalSettings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1, p0}, Lcom/flyme/DeviceOriginalSettings/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 793
    iget-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 794
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 796
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 745
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 747
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 748
    const-string v2, ":settings:categories"

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 751
    :cond_0
    const-string v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 752
    const-string v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 754
    iget-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 760
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 761
    .local v0, "isExpanded":Z
    :goto_0
    const-string v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 763
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .end local v0    # "isExpanded":Z
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    const-string v2, ":settings:home_activities_count"

    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    return-void

    .line 760
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 763
    .restart local v0    # "isExpanded":Z
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 446
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 448
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->revertToInitialFragment()V

    .line 451
    :cond_0
    return-void
.end method

.method public setNfcProfileCallback(Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileTagCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileTagCallback;

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mNfcProfileCallback:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileTagCallback;

    .line 1426
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1422
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1339
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 950
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f100210

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 951
    if-eqz p2, :cond_0

    .line 952
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 953
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 957
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 958
    return-void

    .line 955
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 887
    const/4 v6, 0x0

    .line 888
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 889
    if-eqz p4, :cond_1

    .line 890
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 896
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/flyme/DeviceOriginalSettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 898
    return-void

    .line 893
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 914
    const/4 v4, 0x0

    .line 915
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 916
    if-eqz p4, :cond_1

    .line 917
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 923
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/flyme/DeviceOriginalSettings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    .line 925
    return-void

    .line 920
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

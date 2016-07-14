.class public Lcom/android/settings/cyanogenmod/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBlacklist:Landroid/preference/PreferenceScreen;

.field private mWhisperPush:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/android/settings/cyanogenmod/PrivacySettings$1;

    invoke-direct {v0}, Lcom/android/settings/cyanogenmod/PrivacySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/cyanogenmod/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/android/settings/cyanogenmod/PrivacySettings;->isWhisperPushable(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method

.method private static isWhisperPushable(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 75
    const-string v0, "android.hardware.telephony"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "org.whispersystems.whisperpush"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBlacklistSummary()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f060038

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PrivacySettings;->addPreferencesFromResource(I)V

    .line 51
    const-string v2, "blacklist"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    .line 52
    const-string v2, "whisperpush"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mWhisperPush:Landroid/preference/Preference;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 59
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->isWhisperPushable(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 62
    .local v1, "root":Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mWhisperPush:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    .end local v1    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    const-string v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 69
    .restart local v1    # "root":Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    .end local v1    # "root":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->updateBlacklistSummary()V

    .line 83
    return-void
.end method

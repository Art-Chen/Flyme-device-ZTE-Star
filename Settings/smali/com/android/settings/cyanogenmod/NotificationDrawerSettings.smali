.class public Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationDrawerSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mQSTiles:Landroid/preference/Preference;

.field private mQuickPulldown:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings$1;

    invoke-direct {v0}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updatePulldownSummary(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    .local v1, "res":Landroid/content/res/Resources;
    if-nez p1, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    const v3, 0x7f09029c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const v2, 0x7f09029a

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "direction":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    const v3, 0x7f090299

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    .end local v0    # "direction":Ljava/lang/String;
    :cond_1
    const v2, 0x7f09029b

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 58
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 59
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "quick_pulldown"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    .line 61
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    const-string v3, "qs_quick_pulldown"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 64
    .local v1, "quickPulldownValue":I
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->updatePulldownSummary(I)V

    .line 66
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->addPreferencesFromResource(I)V

    .line 50
    const-string v0, "qs_order"

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->mQSTiles:Landroid/preference/Preference;

    .line 51
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 80
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 81
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    .local v0, "quickPulldownValue":I
    const-string v2, "qs_quick_pulldown"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 84
    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->updatePulldownSummary(I)V

    .line 85
    const/4 v2, 0x1

    .line 87
    .end local v0    # "quickPulldownValue":I
    :goto_0
    return v2

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cyanogenmod/qs/QSTiles;->determineTileCount(Landroid/content/Context;)I

    move-result v0

    .line 73
    .local v0, "qsTileCount":I
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->mQSTiles:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NotificationDrawerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

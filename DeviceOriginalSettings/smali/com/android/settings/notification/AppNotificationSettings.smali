.class public Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "AppNotificationSettings.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

.field private final mBackend:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$Backend;

.field private mBlock:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mPriority:Landroid/preference/SwitchPreference;

.field private mSensitive:Landroid/preference/SwitchPreference;

.field private mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

.field private mShowOnKeyguard:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$Backend;

    invoke-direct {v0}, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mBackend:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$Backend;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;)Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;)Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mBackend:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$Backend;

    return-object v0
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 263
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 265
    array-length v0, v4

    .line 266
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 267
    aget-object v3, v4, v2

    .line 268
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 277
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 271
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0907d4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 260
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    sget-boolean v6, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "AppNotificationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityCreated mCreated="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mCreated:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-boolean v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mCreated:Z

    if-eqz v6, :cond_2

    .line 77
    const-string v6, "AppNotificationSettings"

    const-string v7, "onActivityCreated: ignoring duplicate call"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    iput-boolean v10, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mCreated:Z

    .line 81
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    if-eqz v6, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f100210

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 83
    .local v4, "content":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 84
    .local v5, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040008

    invoke-virtual {v6, v7, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, "bar":Landroid/view/View;
    const v6, 0x7f10000f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 88
    .local v0, "appIcon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    iget-object v6, v6, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    const v6, 0x7f100010

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    .local v1, "appName":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    iget-object v6, v6, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v6, 0x7f100011

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 94
    .local v2, "appSettings":Landroid/view/View;
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    iget-object v6, v6, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-nez v6, :cond_3

    .line 95
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_1
    invoke-virtual {v5, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {v2, v10}, Landroid/view/View;->setClickable(Z)V

    .line 98
    new-instance v6, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$1;

    invoke-direct {v6, p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$1;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iput-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 113
    .local v3, "intent":Landroid/content/Intent;
    sget-boolean v11, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "AppNotificationSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreate getIntent()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    if-nez v3, :cond_2

    .line 115
    const-string v11, "AppNotificationSettings"

    const-string v12, "No intent"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->toastAndFinish()V

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    const-string v11, "app_uid"

    const/4 v12, -0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 121
    .local v10, "uid":I
    const-string v11, "app_package"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "pkg":Ljava/lang/String;
    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 123
    :cond_3
    const-string v11, "AppNotificationSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing extras: app_package was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "app_uid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->toastAndFinish()V

    goto :goto_0

    .line 129
    :cond_4
    sget-boolean v11, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v11, :cond_5

    const-string v11, "AppNotificationSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Load details for pkg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 131
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v7, v6, v10}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 132
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_6

    .line 133
    const-string v11, "AppNotificationSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to find package info: app_package was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "app_uid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->toastAndFinish()V

    goto/16 :goto_0

    .line 139
    :cond_6
    const v11, 0x7f060007

    invoke-virtual {p0, v11}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 140
    const-string v11, "block"

    invoke-virtual {p0, v11}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    .line 141
    const-string v11, "priority"

    invoke-virtual {p0, v11}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    .line 142
    const-string v11, "sensitive"

    invoke-virtual {p0, v11}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    .line 143
    const-string v11, "show_on_keyguard"

    invoke-virtual {p0, v11}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    .line 144
    const-string v11, "no_ongoing_on_keyguard"

    invoke-virtual {p0, v11}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    .line 146
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    .line 147
    .local v9, "secure":Z
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 148
    .local v1, "enabled":Z
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 149
    .local v0, "allowPrivate":Z
    if-eqz v9, :cond_7

    if-eqz v1, :cond_7

    if-nez v0, :cond_8

    .line 150
    :cond_7
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    :cond_8
    iget-object v11, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mBackend:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$Backend;

    invoke-static {v7, v11, v12}, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$Backend;)Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    move-result-object v11

    iput-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    .line 154
    const-string v11, "has_settings_intent"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 156
    const-string v11, "has_settings_intent"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 157
    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    const-string v11, "settings_intent"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    iput-object v11, v12, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 166
    :cond_9
    :goto_1
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    iget-boolean v12, v12, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;->banned:Z

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 167
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    iget-boolean v12, v12, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;->priority:Z

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 168
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_a

    .line 169
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    iget-boolean v12, v12, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;->sensitive:Z

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 172
    :cond_a
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$2;

    invoke-direct {v12, p0, v6, v10}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$2;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$3;

    invoke-direct {v12, p0, v6, v10}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$3;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_b

    .line 189
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$4;

    invoke-direct {v12, p0, v6, v10}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$4;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    :cond_b
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mBackend:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$Backend;

    invoke-virtual {v11, v6, v10}, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$Backend;->getShowNotificationForPackageOnKeyguard(Ljava/lang/String;I)I

    move-result v5

    .line 199
    .local v5, "keyguard":I
    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    and-int/lit8 v11, v5, 0x1

    if-eqz v11, :cond_f

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 200
    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    and-int/lit8 v11, v5, 0x2

    if-eqz v11, :cond_10

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 203
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$5;

    invoke-direct {v12, p0, v6, v10}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$5;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$6;

    invoke-direct {v12, p0, v6, v10}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$6;-><init>(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    invoke-static {v7, v2}, Lcom/flyme/DeviceOriginalSettings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 236
    .local v4, "isSystemPkg":Z
    if-nez v4, :cond_c

    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v11

    if-nez v11, :cond_d

    .line 237
    :cond_c
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mShowNoOngoingOnKeyguard:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mShowOnKeyguard:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_d
    if-eqz v4, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v4    # "isSystemPkg":Z
    .end local v5    # "keyguard":I
    :cond_e
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 162
    .local v8, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;>;"
    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    iget-object v11, v11, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    invoke-virtual {v8, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList;->collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    goto/16 :goto_1

    .line 199
    .end local v8    # "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;>;"
    .restart local v5    # "keyguard":I
    :cond_f
    const/4 v11, 0x0

    goto :goto_2

    .line 200
    :cond_10
    const/4 v11, 0x0

    goto :goto_3
.end method

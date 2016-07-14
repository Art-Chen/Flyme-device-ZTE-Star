.class public Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;
.super Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;
.source "AppGroupList.java"


# instance fields
.field private mFab:Landroid/view/View;

.field private mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->addAppGroup()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;)Landroid/app/ProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method private addAppGroup()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 118
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400c2

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "content":Landroid/view/View;
    const v6, 0x7f1001b8

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 120
    .local v5, "prompt":Landroid/widget/TextView;
    const v6, 0x7f10002c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 122
    .local v3, "entry":Landroid/widget/EditText;
    const v6, 0x7f0901da

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0901d8

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 128
    const v6, 0x104000a

    new-instance v7, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList$2;

    invoke-direct {v7, p0, v3}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList$2;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 146
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 147
    return-void
.end method

.method private editGroup(Landroid/app/NotificationGroup;)V
    .locals 6
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 150
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "NotificationGroup"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    const-class v0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0901d6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 155
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const v0, 0x7f0400a4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 108
    instance-of v1, p2, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v0

    .line 111
    .local v0, "group":Landroid/app/NotificationGroup;
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->editGroup(Landroid/app/NotificationGroup;)V

    .line 113
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 66
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->refreshList()V

    .line 69
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/cm/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 72
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f1000fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->mFab:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->mFab:Landroid/view/View;

    new-instance v1, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList$1;

    invoke-direct {v1, p0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList$1;-><init>(Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public refreshList()V
    .locals 8

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 94
    .local v0, "appgroupList":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 97
    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v6}, Landroid/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v1

    .local v1, "arr$":[Landroid/app/NotificationGroup;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 98
    .local v2, "group":Landroid/app/NotificationGroup;
    new-instance v5, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    .local v5, "pref":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 102
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "group":Landroid/app/NotificationGroup;
    .end local v5    # "pref":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

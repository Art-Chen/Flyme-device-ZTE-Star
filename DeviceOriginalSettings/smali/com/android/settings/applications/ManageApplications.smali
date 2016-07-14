.class public Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/flyme/DeviceOriginalSettings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mNumTabs:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPinnedHeader:Landroid/view/ViewGroup;

.field private mProfileSpinnerAdapter:Lcom/flyme/DeviceOriginalSettings/UserSpinnerAdapter;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private mSpinner:Landroid/widget/Spinner;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 188
    const/4 v0, 0x4

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mDefaultListType:I

    .line 1386
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$3;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$3;-><init>(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    .prologue
    .line 137
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mNumTabs:I

    return v0
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    .prologue
    .line 137
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1400(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private locateIndex(I)I
    .locals 2
    .param p1, "appInstallID"    # I

    .prologue
    .line 1300
    const/4 v0, 0x2

    .line 1301
    .local v0, "selectedLocation":I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 1302
    const/4 v0, 0x0

    .line 1308
    :cond_0
    :goto_0
    return v0

    .line 1303
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 1304
    const/4 v0, 0x1

    goto :goto_0

    .line 1305
    :cond_2
    if-nez p1, :cond_0

    .line 1306
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private showAppInstallLocationSettingDlg()V
    .locals 6

    .prologue
    .line 1312
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_install_location"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1314
    .local v0, "appInstallID":I
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->locateIndex(I)I

    move-result v2

    .line 1316
    .local v2, "selectedLocation":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1318
    .local v1, "items":[Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0907f3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$2;

    invoke-direct {v4, p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$2;-><init>(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)V

    invoke-virtual {v3, v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1347
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1088
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1089
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;

    .line 1092
    .local v0, "sa":Lcom/flyme/DeviceOriginalSettings/SettingsActivity;
    const-class v1, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09079a

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1094
    return-void
.end method

.method private updateNumTabs()V
    .locals 2

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1067
    .local v0, "newNum":I
    :goto_0
    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mNumTabs:I

    if-eq v0, v1, :cond_0

    .line 1068
    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mNumTabs:I

    .line 1069
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1073
    :cond_0
    return-void

    .line 1066
    .end local v0    # "newNum":I
    :cond_1
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1173
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1174
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1175
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0907be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1176
    const v1, 0x7f0907bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1177
    const v1, 0x7f0907c0

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1178
    const v1, 0x7f09041f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1179
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1180
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1182
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1039
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1042
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1195
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1196
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1198
    .local v4, "mIPm":Landroid/content/pm/IPackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1200
    .local v3, "nm":Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    .line 1201
    .local v6, "npm":Landroid/net/NetworkPolicyManager;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1203
    .local v5, "aom":Landroid/app/AppOpsManager;
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1204
    .local v7, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$1;-><init>(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1261
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "nm":Landroid/app/INotificationManager;
    .end local v4    # "mIPm":Landroid/content/pm/IPackageManager;
    .end local v5    # "aom":Landroid/app/AppOpsManager;
    .end local v6    # "npm":Landroid/net/NetworkPolicyManager;
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 851
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 853
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 855
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContext:Landroid/content/Context;

    .line 856
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    .line 857
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 858
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, "action":Ljava/lang/String;
    const/4 v10, 0x0

    .line 860
    .local v10, "defaultListType":I
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "classname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 862
    .local v8, "className":Ljava/lang/String;
    :goto_0
    if-nez v8, :cond_0

    .line 863
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 865
    :cond_0
    const-class v1, Lcom/flyme/DeviceOriginalSettings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 867
    :cond_1
    const/4 v10, 0x1

    .line 878
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 879
    const-string v1, "sortOrder"

    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 880
    const-string v1, "defaultListType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 881
    .local v12, "tmp":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_3

    move v10, v12

    .line 882
    :cond_3
    const-string v1, "showBackground"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 885
    .end local v12    # "tmp":I
    :cond_4
    iput v10, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mDefaultListType:I

    .line 887
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/flyme/DeviceOriginalSettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 889
    .local v9, "containerIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v9, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 891
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0907e3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 892
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0907e2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 894
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0907c6

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/flyme/DeviceOriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 897
    .local v0, "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    invoke-static {}, Landroid/os/Environment;->isNoEmulatedStorageExist()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 900
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0907c8

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/flyme/DeviceOriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 903
    .restart local v0    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_5
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0907c7

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/flyme/DeviceOriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 909
    .restart local v0    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0907c4

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/flyme/DeviceOriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 914
    .restart local v0    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .end local v0    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0907c5

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/flyme/DeviceOriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 919
    .restart local v0    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mNumTabs:I

    .line 923
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 924
    .local v13, "um":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-static {v13, v1}, Lcom/flyme/DeviceOriginalSettings/Utils;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/flyme/DeviceOriginalSettings/UserSpinnerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/flyme/DeviceOriginalSettings/UserSpinnerAdapter;

    .line 925
    return-void

    .line 860
    .end local v0    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "containerIntent":Landroid/content/Intent;
    .end local v13    # "um":Landroid/os/UserManager;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 868
    .restart local v8    # "className":Ljava/lang/String;
    :cond_7
    const-class v1, Lcom/flyme/DeviceOriginalSettings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".StorageUse"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 871
    :cond_8
    const/4 v1, 0x5

    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 872
    const/4 v10, 0x3

    goto/16 :goto_1

    .line 873
    :cond_9
    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 875
    const/4 v10, 0x3

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1098
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1101
    const v0, 0x7f0907b9

    invoke-interface {p1, v2, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1104
    const/4 v0, 0x2

    const v1, 0x7f0907ba

    invoke-interface {p1, v2, v6, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1107
    const/4 v0, 0x6

    const v1, 0x7f0907bb

    invoke-interface {p1, v2, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1109
    const/4 v0, 0x7

    const v1, 0x7f0907bc

    invoke-interface {p1, v2, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1111
    const/16 v0, 0x8

    const v1, 0x7f0907bd

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1113
    const/16 v0, 0x9

    const v1, 0x7f0907f3

    invoke-interface {p1, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1115
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    const/16 v0, 0xb

    const v1, 0x7f0900ac

    invoke-interface {p1, v2, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 931
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 933
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040073

    invoke-virtual {v7, v8, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 935
    .local v4, "rootView":Landroid/view/View;
    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 936
    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 937
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v8, 0x7f100136

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    .line 938
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/flyme/DeviceOriginalSettings/UserSpinnerAdapter;

    if-eqz v7, :cond_0

    .line 939
    const v7, 0x7f0400ef

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    .line 940
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/flyme/DeviceOriginalSettings/UserSpinnerAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 941
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 942
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 943
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 945
    :cond_0
    const v7, 0x7f10001c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 946
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)V

    .line 947
    .local v0, "adapter":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$MyPagerAdapter;
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 948
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 949
    const v7, 0x7f10001d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/PagerTabStrip;

    .line 950
    .local v6, "tabs":Landroid/support/v4/view/PagerTabStrip;
    const v7, 0x7f080051

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 954
    instance-of v7, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v7, :cond_1

    .line 955
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 958
    :cond_1
    if-eqz p3, :cond_2

    const-string v7, "resetDialog"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 959
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->buildResetDialog()V

    .line 962
    :cond_2
    if-nez p3, :cond_3

    .line 964
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "currentListType"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 966
    .local v2, "extraCurrentListType":I
    if-eq v2, v9, :cond_4

    move v1, v2

    .line 968
    .local v1, "currentListType":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mNumTabs:I

    if-ge v3, v7, :cond_3

    .line 969
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .line 970
    .local v5, "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget v7, v5, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v7, v1, :cond_5

    .line 971
    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 977
    .end local v1    # "currentListType":I
    .end local v2    # "extraCurrentListType":I
    .end local v3    # "i":I
    .end local v5    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    :cond_3
    return-object v4

    .line 966
    .restart local v2    # "extraCurrentListType":I
    :cond_4
    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mDefaultListType:I

    goto :goto_0

    .line 968
    .restart local v1    # "currentListType":I
    .restart local v3    # "i":I
    .restart local v5    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1135
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1136
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1130
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1027
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1031
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1032
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->detachView()V

    .line 1033
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->release()V

    .line 1031
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1035
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1189
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "tab"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1351
    .local p2, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1352
    iget-object v1, p1, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1353
    .local v0, "entry":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1354
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1356
    .end local v0    # "entry":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 1046
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/flyme/DeviceOriginalSettings/UserSpinnerAdapter;

    invoke-virtual {v3, p3}, Lcom/flyme/DeviceOriginalSettings/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1047
    .local v2, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1048
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1050
    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1051
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1052
    .local v0, "currentTab":I
    const-string v4, "currentListType"

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget v3, v3, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mListType:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1056
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1058
    .end local v0    # "currentTab":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1063
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1266
    .local v1, "menuId":I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    .line 1267
    :cond_0
    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 1268
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_1

    .line 1269
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v2, v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1293
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    move v2, v3

    .line 1294
    :cond_2
    return v2

    .line 1271
    :cond_3
    const/4 v4, 0x6

    if-ne v1, v4, :cond_4

    .line 1272
    iput-boolean v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 1273
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1274
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4, v2}, Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1276
    :cond_4
    const/4 v4, 0x7

    if-ne v1, v4, :cond_5

    .line 1277
    iput-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 1278
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1279
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;

    move-result-object v2

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v2, v3}, Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1281
    :cond_5
    const/16 v4, 0x8

    if-ne v1, v4, :cond_6

    .line 1282
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0

    .line 1283
    :cond_6
    const/16 v4, 0x9

    if-ne v1, v4, :cond_7

    .line 1284
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->showAppInstallLocationSettingDlg()V

    goto :goto_0

    .line 1285
    :cond_7
    const/16 v4, 0xb

    if-ne v1, v4, :cond_2

    .line 1287
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/flyme/DeviceOriginalSettings/applications/ProtectedAppsActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1288
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1009
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1010
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    .line 1011
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->pause()V

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1125
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 987
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    .line 989
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 990
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->updateNumTabs()V

    .line 991
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 992
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 996
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 997
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 998
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 999
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1002
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1003
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1005
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 982
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 983
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1018
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1019
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1021
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1023
    :cond_0
    return-void
.end method

.method tabForType(I)Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1076
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1077
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .line 1078
    .local v1, "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1082
    .end local v1    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1076
    .restart local v1    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1082
    .end local v1    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 1359
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .line 1360
    .local v3, "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .line 1363
    iget-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1364
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1365
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1369
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1370
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .line 1371
    .local v2, "t":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1372
    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->pause()V

    .line 1369
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1367
    .end local v1    # "i":I
    .end local v2    # "t":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1376
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1377
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1378
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1379
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1380
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1382
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1139
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v3, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget v3, v3, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v3, v4, :cond_5

    .line 1148
    invoke-virtual {p0, v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->tabForType(I)Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1149
    .local v1, "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_3

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_3

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3}, Lcom/flyme/DeviceOriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1151
    .local v0, "showingBackground":Z
    :goto_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1152
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1153
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1154
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_4

    move v3, v4

    :goto_2
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1155
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v5, 0x8

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1156
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1157
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1159
    :cond_2
    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mShowBackground:Z

    goto :goto_0

    .end local v0    # "showingBackground":Z
    :cond_3
    move v0, v2

    .line 1149
    goto :goto_1

    .restart local v0    # "showingBackground":Z
    :cond_4
    move v3, v2

    .line 1154
    goto :goto_2

    .line 1161
    .end local v0    # "showingBackground":Z
    .end local v1    # "tab":Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    :cond_5
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    if-eq v3, v6, :cond_6

    move v3, v4

    :goto_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1162
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mSortOrder:I

    if-eq v3, v7, :cond_7

    move v3, v4

    :goto_4
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1163
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1164
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1165
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1166
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1167
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    move v3, v2

    .line 1161
    goto :goto_3

    :cond_7
    move v3, v2

    .line 1162
    goto :goto_4
.end method

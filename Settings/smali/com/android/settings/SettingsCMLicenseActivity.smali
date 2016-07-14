.class public Lcom/android/settings/SettingsCMLicenseActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsCMLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsCMLicenseActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsCMLicenseActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsCMLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsCMLicenseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsCMLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method private showErrorAndFinish(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 91
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09028f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/SettingsCMLicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090290

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 106
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings/SettingsCMLicenseActivity;->finish()V

    .line 136
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/SettingsCMLicenseActivity;->finish()V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v5, "ro.cmlegal.url"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "userCMLicenseUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsCMLicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 53
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "language":Ljava/lang/String;
    iget-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "country":Ljava/lang/String;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 60
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 63
    iget-object v5, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v5, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/android/settings/SettingsCMLicenseActivity$1;

    invoke-direct {v6, p0}, Lcom/android/settings/SettingsCMLicenseActivity$1;-><init>(Lcom/android/settings/SettingsCMLicenseActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    iget-object v3, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 84
    .local v3, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v5, 0x7f09075e

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsCMLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 85
    iget-object v5, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 86
    iput-boolean v7, v3, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/SettingsCMLicenseActivity;->setupAlert()V

    .line 88
    return-void

    .line 67
    .end local v3    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 116
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/SettingsCMLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 141
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method

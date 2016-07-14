.class public Lcom/flyme/DeviceOriginalSettings/SetupEncryptionInterstitial;
.super Lcom/flyme/DeviceOriginalSettings/EncryptionInterstitial;
.source "SetupEncryptionInterstitial.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/EncryptionInterstitial;-><init>()V

    .line 85
    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "requirePasswordDefault"    # Z

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "startIntent":Landroid/content/Intent;
    const-class v1, Lcom/flyme/DeviceOriginalSettings/SetupEncryptionInterstitial;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    const-string v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:show_fragment_title_resid"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/EncryptionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 53
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/flyme/DeviceOriginalSettings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/flyme/DeviceOriginalSettings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SetupEncryptionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/flyme/DeviceOriginalSettings/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/DeviceOriginalSettings/EncryptionInterstitial;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 67
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SetupEncryptionInterstitial;->onBackPressed()V

    .line 77
    return-void
.end method

.method public onNavigateNext()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SetupEncryptionInterstitial;->getResultIntentData()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/SetupEncryptionInterstitial;->setResult(ILandroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/SetupEncryptionInterstitial;->finish()V

    .line 83
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 72
    return-void
.end method

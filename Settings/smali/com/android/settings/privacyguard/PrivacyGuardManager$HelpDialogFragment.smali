.class Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;
.super Landroid/app/DialogFragment;
.source "PrivacyGuardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacyguard/PrivacyGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpDialogFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacyguard/PrivacyGuardManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;->this$0:Lcom/android/settings/privacyguard/PrivacyGuardManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;Lcom/android/settings/privacyguard/PrivacyGuardManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/privacyguard/PrivacyGuardManager;
    .param p2, "x1"    # Lcom/android/settings/privacyguard/PrivacyGuardManager$1;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;->this$0:Lcom/android/settings/privacyguard/PrivacyGuardManager;

    # getter for: Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->access$000(Lcom/android/settings/privacyguard/PrivacyGuardManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_help_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907d1

    new-instance v2, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment$1;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

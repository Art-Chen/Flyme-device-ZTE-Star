.class Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;
.super Landroid/app/DialogFragment;
.source "PrivacyGuardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDialogFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->this$0:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;-><init>(Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 334
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907d1

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;-><init>(Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09041f

    new-instance v2, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;-><init>(Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

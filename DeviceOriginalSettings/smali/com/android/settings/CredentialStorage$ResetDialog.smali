.class Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/CredentialStorage;)V
    .locals 3

    .prologue
    .line 297
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetDialog;->this$0:Lcom/flyme/DeviceOriginalSettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a01

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 304
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 305
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/CredentialStorage;Lcom/flyme/DeviceOriginalSettings/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/CredentialStorage;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/CredentialStorage$1;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetDialog;-><init>(Lcom/flyme/DeviceOriginalSettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 309
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 310
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-eqz v0, :cond_0

    .line 314
    iput-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 315
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetDialog;->this$0:Lcom/flyme/DeviceOriginalSettings/CredentialStorage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/flyme/DeviceOriginalSettings/CredentialStorage;Lcom/flyme/DeviceOriginalSettings/CredentialStorage$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CredentialStorage$ResetDialog;->this$0:Lcom/flyme/DeviceOriginalSettings/CredentialStorage;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

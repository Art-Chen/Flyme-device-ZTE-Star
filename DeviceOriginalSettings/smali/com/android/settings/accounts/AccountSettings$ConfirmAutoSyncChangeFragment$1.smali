.class Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 592
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mEnabling:Z
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->access$700(Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Z

    move-result v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;

    # getter for: Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;->access$800(Lcom/flyme/DeviceOriginalSettings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 594
    return-void
.end method
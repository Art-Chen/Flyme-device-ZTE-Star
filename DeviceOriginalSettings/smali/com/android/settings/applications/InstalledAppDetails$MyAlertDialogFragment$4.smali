.class Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 1245
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    move-result-object v0

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->access$1100(Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1247
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;

    move-result-object v0

    # invokes: Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;->access$700(Lcom/flyme/DeviceOriginalSettings/applications/InstalledAppDetails;ZZ)V

    .line 1248
    return-void
.end method

.class Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;->this$0:Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;->this$0:Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;->val$args:Landroid/os/Bundle;

    const-string v2, "unlockMethodToSet"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->access$000(Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z

    .line 593
    return-void
.end method
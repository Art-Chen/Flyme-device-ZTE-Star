.class public Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
.super Landroid/app/DialogFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryResetProtectionWarningDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    .locals 3
    .param p0, "title"    # I
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 562
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-direct {v1}, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;-><init>()V

    .line 564
    .local v1, "frag":Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 565
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "titleRes"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    const-string v2, "unlockMethodToSet"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {v1, v0}, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->setArguments(Landroid/os/Bundle;)V

    .line 568
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 583
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "titleRes"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090493

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090422

    new-instance v3, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;

    invoke-direct {v3, p0, v0}, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;-><init>(Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09041f

    new-instance v3, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;

    invoke-direct {v3, p0}, Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;-><init>(Lcom/flyme/DeviceOriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 575
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 577
    :cond_0
    return-void
.end method

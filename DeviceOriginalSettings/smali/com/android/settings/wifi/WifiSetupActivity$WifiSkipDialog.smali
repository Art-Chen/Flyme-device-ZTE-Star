.class public Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;
.super Landroid/app/DialogFragment;
.source "WifiSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiSkipDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 267
    return-void
.end method

.method public static newInstance(I)Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;
    .locals 3
    .param p0, "messageRes"    # I

    .prologue
    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "messageRes"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;

    invoke-direct {v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;-><init>()V

    .line 261
    .local v1, "dialog":Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;
    invoke-virtual {v1, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;->setArguments(Landroid/os/Bundle;)V

    .line 262
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "messageRes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "messageRes":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905b7

    new-instance v3, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog$2;

    invoke-direct {v3, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog$2;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905b8

    new-instance v3, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog$1;

    invoke-direct {v3, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog$1;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

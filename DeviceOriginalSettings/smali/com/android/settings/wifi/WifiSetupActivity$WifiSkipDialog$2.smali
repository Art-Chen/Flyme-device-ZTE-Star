.class Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog$2;
.super Ljava/lang/Object;
.source "WifiSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog$2;->this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 279
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog$2;->this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity;

    .line 280
    .local v0, "activity":Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSetupActivity;->finishOrNext(I)V

    .line 281
    return-void
.end method

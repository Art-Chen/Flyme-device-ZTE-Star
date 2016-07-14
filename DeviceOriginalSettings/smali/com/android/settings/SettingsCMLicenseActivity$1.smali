.class Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SettingsCMLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity$1;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity$1;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;->access$000(Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity$1;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;

    const v2, 0x7f09028f

    invoke-virtual {v1, v2}, Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity$1;->this$0:Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;

    # invokes: Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;->access$100(Lcom/flyme/DeviceOriginalSettings/SettingsCMLicenseActivity;Ljava/lang/String;)V

    .line 80
    return-void
.end method

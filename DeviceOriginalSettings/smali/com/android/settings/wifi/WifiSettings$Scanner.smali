.class Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field private mWifiSettings:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;)V
    .locals 1
    .param p1, "wifiSettings"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;

    .line 181
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;

    .line 182
    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 202
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;

    iget-object v1, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iput v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 212
    :cond_0
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v4, v2, v3}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 205
    iput v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 206
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->mWifiSettings:Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 207
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 208
    const v1, 0x7f090546

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 197
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 198
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 188
    :cond_0
    return-void
.end method

.class public Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;
.super Landroid/app/Activity;
.source "WifiStatusTest.java"


# instance fields
.field private mBSSID:Landroid/widget/TextView;

.field private mHiddenSSID:Landroid/widget/TextView;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mIPAddr:Landroid/widget/TextView;

.field private mLinkSpeed:Landroid/widget/TextView;

.field private mMACAddr:Landroid/widget/TextView;

.field private mNetworkId:Landroid/widget/TextView;

.field private mNetworkState:Landroid/widget/TextView;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field private mRSSI:Landroid/widget/TextView;

.field private mSSID:Landroid/widget/TextView;

.field private mScanList:Landroid/widget/TextView;

.field private mSupplicantState:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:Landroid/widget/TextView;

.field private mWifiStateFilter:Landroid/content/IntentFilter;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private pingTestButton:Landroid/widget/Button;

.field private updateButton:Landroid/widget/Button;

.field updateButtonHandler:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$1;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$2;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$2;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 181
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$3;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$3;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->updateButtonHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->handleScanResultsAvailable()V

    return-void
.end method

.method static synthetic access$2000(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$2400(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->pingHostname()V

    return-void
.end method

.method static synthetic access$2500(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->httpClientTest()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->handleSignalChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->updatePingState()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->setWifiStateText(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 302
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 304
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {p0, v3, v4, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "summary":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mNetworkState:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    .end local v1    # "summary":Ljava/lang/String;
    :cond_0
    return-void

    .line 304
    .restart local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleScanResultsAvailable()V
    .locals 6

    .prologue
    .line 272
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .local v2, "scanList":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_2

    .line 276
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 277
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 279
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_1

    .line 276
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 290
    .end local v0    # "i":I
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mScanList:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method private handleSignalChanged(I)V
    .locals 2
    .param p1, "rssi"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method private handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 2
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "hasError"    # Z
    .param p3, "error"    # I

    .prologue
    .line 294
    if-eqz p2, :cond_0

    .line 295
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ERROR AUTHENTICATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    goto :goto_0
.end method

.method private handleWifiStateChanged(I)V
    .locals 0
    .param p1, "wifiState"    # I

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->setWifiStateText(I)V

    .line 269
    return-void
.end method

.method private httpClientTest()V
    .locals 6

    .prologue
    .line 398
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 401
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://www.google.com"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 402
    .local v2, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 403
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 404
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    .line 408
    :goto_0
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 412
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 406
    .restart local v2    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private final pingHostname()V
    .locals 5

    .prologue
    .line 381
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "ping -c 1 -w 100 www.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 382
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 383
    .local v2, "status":I
    if-nez v2, :cond_0

    .line 384
    const-string v3, "Pass"

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    .line 395
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "status":I
    :goto_0
    return-void

    .line 386
    .restart local v1    # "p":Ljava/lang/Process;
    .restart local v2    # "status":I
    :cond_0
    const-string v3, "Fail: Host unreachable"

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 388
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "Fail: Unknown Host"

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 390
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 392
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "Fail: InterruptedException"

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 7

    .prologue
    .line 363
    :try_start_0
    const-string v1, "74.125.47.104"

    .line 364
    .local v1, "ipAddress":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 -w 100 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 365
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 366
    .local v3, "status":I
    if-nez v3, :cond_0

    .line 367
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    .line 376
    .end local v1    # "ipAddress":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "status":I
    :goto_0
    return-void

    .line 369
    .restart local v1    # "ipAddress":Ljava/lang/String;
    .restart local v2    # "p":Ljava/lang/Process;
    .restart local v3    # "status":I
    :cond_0
    const-string v4, "Fail: IP addr not reachable"

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 371
    .end local v1    # "ipAddress":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 373
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V
    .locals 2
    .param p1, "supplicantState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 208
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "FOUR WAY HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ASSOCIATED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ASSOCIATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "COMPLETED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    :cond_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :cond_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "DORMANT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :cond_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "GROUP HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "INACTIVE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :cond_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 225
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    :cond_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 227
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "SCANNING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 228
    :cond_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 229
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "UNINITIALIZED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 231
    :cond_a
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "BAD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const-string v0, "WifiStatusTest"

    const-string v1, "supplicant state is bad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setWifiStateText(I)V
    .locals 3
    .param p1, "wifiState"    # I

    .prologue
    .line 238
    packed-switch p1, :pswitch_data_0

    .line 255
    const-string v0, "BAD"

    .line 256
    .local v0, "wifiStateString":Ljava/lang/String;
    const-string v1, "WifiStatusTest"

    const-string v2, "wifi state is bad"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-void

    .line 240
    .end local v0    # "wifiStateString":Ljava/lang/String;
    :pswitch_0
    const v1, 0x7f090604

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .restart local v0    # "wifiStateString":Ljava/lang/String;
    goto :goto_0

    .line 243
    .end local v0    # "wifiStateString":Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f090605

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .restart local v0    # "wifiStateString":Ljava/lang/String;
    goto :goto_0

    .line 246
    .end local v0    # "wifiStateString":Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f090606

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    .restart local v0    # "wifiStateString":Ljava/lang/String;
    goto :goto_0

    .line 249
    .end local v0    # "wifiStateString":Ljava/lang/String;
    :pswitch_3
    const v1, 0x7f090607

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .restart local v0    # "wifiStateString":Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v0    # "wifiStateString":Ljava/lang/String;
    :pswitch_4
    const v1, 0x7f090608

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .restart local v0    # "wifiStateString":Ljava/lang/String;
    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 7

    .prologue
    const v6, 0x7f090354

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 313
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    .line 317
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    new-instance v4, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$4;

    invoke-direct {v4, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$4;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V

    .line 328
    .local v4, "updatePingResults":Ljava/lang/Runnable;
    new-instance v3, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$5;

    invoke-direct {v3, p0, v0, v4}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$5;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 335
    .local v3, "ipAddrThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 337
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$6;

    invoke-direct {v1, p0, v0, v4}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$6;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 344
    .local v1, "hostnameThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 346
    new-instance v2, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$7;

    invoke-direct {v2, p0, v0, v4}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$7;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 353
    .local v2, "httpClientThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    const v0, 0x7f040114

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->setContentView(I)V

    .line 138
    const v0, 0x7f1002bf

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->updateButton:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->updateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->updateButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f1002c0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiState:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f1002c1

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mNetworkState:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f1002c2

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f1002c3

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f1002c4

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f100272

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f1002c5

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f1002c6

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f1002c7

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f1002c8

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f1002c9

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f1002ca

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mScanList:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f1001c7

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f1001c8

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f1001c9

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f1001c6

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->pingTestButton:Landroid/widget/Button;

    .line 160
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->pingTestButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method

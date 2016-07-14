.class public Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAkaAvailableSimName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapMethods:[Ljava/lang/String;

.field private mEapSimAvailableSimName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIbssFreqSpinner:Landroid/widget/Spinner;

.field private mIbssView:Landroid/widget/CheckBox;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSelectedIbssChannelPos:I

.field private mSimCardSpinner:Landroid/widget/Spinner;

.field private mSimDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mSupportedIbssChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;Z)V
    .locals 26
    .param p1, "parent"    # Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;
    .param p4, "edit"    # Z

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v22, "unspecified"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 162
    sget-object v22, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 163
    sget-object v22, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 164
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 165
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 186
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    .line 187
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 189
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 190
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    .line 191
    if-nez p3, :cond_1

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 193
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEdit:Z

    .line 195
    new-instance v22, Landroid/os/Handler;

    invoke-direct/range {v22 .. v22}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "wifi"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 201
    .local v16, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "wifi"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getSimInfo()Landroid/net/wifi/WifiEapSimInfo;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    .line 203
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    .line 204
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    .line 205
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 207
    const v22, 0x7f0c0018

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 208
    const v22, 0x7f0c0020

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    .line 209
    new-instance v22, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x1090008

    const v25, 0x7f0c0021

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v22 .. v25}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v22, v0

    const v23, 0x1090009

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 214
    new-instance v22, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x1090008

    const v25, 0x7f0c0022

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v22 .. v25}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v22, v0

    const v23, 0x1090009

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f090591

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f100291

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f10028a

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f1002a5

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f1002a8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    const v23, 0x7f09055d

    invoke-interface/range {v22 .. v23}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f100272

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f100273

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 235
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f100279

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f10027f

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 240
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f040113

    const v24, 0x1020014

    const v25, 0x7f0c0012

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 243
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 248
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showProxyFields()V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f1002a1

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f1002a2

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->isIbssSupported()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f1002a4

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 257
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    .line 258
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v9, "freqSpinnerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getChannelList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiChannel;

    .line 261
    .local v6, "c":Landroid/net/wifi/WifiChannel;
    iget-boolean v0, v6, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0902c6

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v6, Landroid/net/wifi/WifiChannel;->channelNum:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v6, Landroid/net/wifi/WifiChannel;->freqMHz:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0902c7

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 191
    .end local v6    # "c":Landroid/net/wifi/WifiChannel;
    .end local v9    # "freqSpinnerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "res":Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, p3

    iget v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->security:I

    move/from16 v22, v0

    goto/16 :goto_0

    .line 245
    .restart local v16    # "res":Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f100149

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 270
    .restart local v9    # "freqSpinnerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v8, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1090008

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v8, v0, v1, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 272
    .local v8, "freqAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v22, 0x1090009

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    .end local v8    # "freqAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v9    # "freqSpinnerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    const v23, 0x7f0905b4

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 396
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v22, v0

    if-nez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    if-nez v22, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1d

    .line 398
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    const v23, 0x7f0905b6

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 402
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 405
    :cond_7
    return-void

    .line 279
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f100271

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 283
    .local v11, "group":Landroid/view/ViewGroup;
    const/16 v17, 0x0

    .line 285
    .local v17, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->isIBSS:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 286
    const v22, 0x7f0902c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0902c3

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v11, v1, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 287
    const v22, 0x7f0902c5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->frequency:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0902c7

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v11, v1, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 292
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 294
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v22

    sget-object v23, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    .line 296
    const/16 v17, 0x1

    .line 298
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v20

    .line 299
    .local v20, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v20, :cond_a

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    .line 300
    const v22, 0x7f090585

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v11, v1, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 318
    .end local v20    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_a
    :goto_5
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v22

    sget-object v23, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    .line 320
    const/16 v17, 0x1

    .line 329
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->isActive()Z

    move-result v22

    if-eqz v22, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    .line 331
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showProxyFields()V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f1002a1

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f1002a2

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 337
    if-eqz v17, :cond_e

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f1002a2

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f1002a3

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    const v23, 0x7f0905b4

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 304
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    .line 306
    .local v21, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v21, :cond_a

    .line 307
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v14

    .line 308
    .local v14, "ipAddr":I
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    .local v15, "ipBuf":Ljava/lang/StringBuffer;
    and-int/lit16 v0, v14, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const/16 v23, 0x2e

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    ushr-int/lit8 v14, v14, 0x8

    and-int/lit16 v0, v14, 0xff

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const/16 v23, 0x2e

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    ushr-int/lit8 v14, v14, 0x8

    and-int/lit16 v0, v14, 0xff

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const/16 v23, 0x2e

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    ushr-int/lit8 v14, v14, 0x8

    and-int/lit16 v0, v14, 0xff

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 313
    const v22, 0x7f090585

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v11, v1, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_5

    .line 321
    .end local v14    # "ipAddr":I
    .end local v15    # "ipBuf":Ljava/lang/StringBuffer;
    .end local v21    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_10
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v22

    sget-object v23, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    .line 323
    const/16 v17, 0x1

    goto/16 :goto_6

    .line 325
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 346
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    .line 347
    .local v19, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v18

    .line 349
    .local v18, "signalLevel":Ljava/lang/String;
    if-nez v19, :cond_15

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->isIBSS:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 350
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    const v23, 0x7f0905b0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 389
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->isActive()Z

    move-result v22

    if-eqz v22, :cond_5

    :cond_14
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    if-nez v22, :cond_5

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    const v23, 0x7f0905b2

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 352
    :cond_15
    if-eqz v19, :cond_16

    .line 353
    const v23, 0x7f090582

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    const/16 v25, -0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    const/16 v22, 0x1

    :goto_8
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v11, v1, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 358
    :cond_16
    if-eqz v18, :cond_17

    .line 359
    const v22, 0x7f090581

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 362
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 363
    .local v13, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v13, :cond_18

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_18

    .line 364
    const v22, 0x7f090583

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "Mbps"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v11, v1, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 368
    :cond_18
    if-eqz v13, :cond_19

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_19

    .line 369
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v10

    .line 370
    .local v10, "frequency":I
    const/4 v5, 0x0

    .line 372
    .local v5, "band":Ljava/lang/String;
    const/16 v22, 0x960

    move/from16 v0, v22

    if-lt v10, v0, :cond_1b

    const/16 v22, 0x9c4

    move/from16 v0, v22

    if-ge v10, v0, :cond_1b

    .line 374
    const v22, 0x7f09052e

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 381
    :goto_9
    if-eqz v5, :cond_19

    .line 382
    const v22, 0x7f090584

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v11, v1, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 386
    .end local v5    # "band":Ljava/lang/String;
    .end local v10    # "frequency":I
    :cond_19
    const v22, 0x7f090580

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v11, v1, v2}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f100290

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 353
    .end local v13    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 375
    .restart local v5    # "band":Ljava/lang/String;
    .restart local v10    # "frequency":I
    .restart local v13    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1b
    const/16 v22, 0x1324

    move/from16 v0, v22

    if-lt v10, v0, :cond_1c

    const/16 v22, 0x170c

    move/from16 v0, v22

    if-ge v10, v0, :cond_1c

    .line 377
    const v22, 0x7f09052f

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 379
    :cond_1c
    const-string v22, "WifiConfigController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unexpected frequency "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 400
    .end local v5    # "band":Ljava/lang/String;
    .end local v10    # "frequency":I
    .end local v11    # "group":Landroid/view/ViewGroup;
    .end local v13    # "info":Landroid/net/wifi/WifiInfo;
    .end local v17    # "showAdvancedFields":Z
    .end local v18    # "signalLevel":Ljava/lang/String;
    .end local v19    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    const v23, 0x7f090523

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04010e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 409
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f10002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 410
    const v1, 0x7f100040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 412
    return-void
.end method

.method private checkEapSimInfo()V
    .locals 6

    .prologue
    .line 822
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mNumOfSims:I

    if-ge v1, v3, :cond_3

    .line 823
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 825
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "displayname":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget-object v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 829
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is SIM_2G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    .end local v0    # "displayname":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default Sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 831
    .restart local v0    # "displayname":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget-object v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 832
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is SIM_3G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 836
    :cond_2
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 839
    .end local v0    # "displayname":Ljava/lang/String;
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_3
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 642
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_0
    return-object v1

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 643
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 417
    .local v0, "level":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 592
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    if-ne v9, v11, :cond_0

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 596
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v12, :cond_1

    .line 597
    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-direct {v9}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 598
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v9}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 599
    .local v5, "result":I
    if-eqz v5, :cond_1

    move v9, v10

    .line 637
    .end local v5    # "result":I
    :goto_1
    return v9

    .line 592
    :cond_0
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 604
    :cond_1
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 605
    .local v6, "selectedPosition":I
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 606
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 607
    if-ne v6, v11, :cond_4

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 608
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 609
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "host":Ljava/lang/String;
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 613
    .local v3, "port":I
    const/4 v5, 0x0

    .line 615
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 616
    invoke-static {v2, v4, v1}, Lcom/flyme/DeviceOriginalSettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 620
    :goto_2
    if-nez v5, :cond_3

    .line 621
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_3
    move v9, v11

    .line 637
    goto :goto_1

    .line 617
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f0903df

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v9, v10

    .line 623
    goto :goto_1

    .line 625
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_4
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 626
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 627
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 628
    .local v8, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    .line 629
    goto :goto_1

    .line 631
    :cond_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 632
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_6

    move v9, v10

    .line 633
    goto :goto_1

    .line 635
    :cond_6
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1095
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1097
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 1099
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 1107
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1109
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1110
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1111
    return-void

    .line 1101
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 1102
    .local v1, "array":[Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 1103
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1104
    move-object v2, v1

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10029c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 966
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10029e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 979
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1002a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 982
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 961
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1114
    if-eqz p2, :cond_0

    .line 1116
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1117
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1118
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1119
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1124
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1117
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setSimCardInvisible()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100299

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 951
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 971
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1088
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1089
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 11
    .param p1, "eapMethod"    # I

    .prologue
    const v10, 0x1090009

    const v9, 0x1090008

    const/16 v8, 0x8

    const v7, 0x7f1002a1

    const/4 v6, 0x0

    .line 864
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100298

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 865
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10029e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 866
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 870
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10029c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 871
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10027e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 872
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 874
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 875
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 947
    :goto_0
    return-void

    .line 877
    :pswitch_0
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 878
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 879
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 880
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 881
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 884
    :pswitch_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10029d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 885
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 886
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 887
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 888
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 892
    :pswitch_2
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_0

    .line 893
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 894
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 896
    :cond_0
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10029b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10029f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 898
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 899
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 903
    :pswitch_3
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_1

    .line 904
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 905
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 907
    :cond_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10029b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 908
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10029f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 909
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 910
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto/16 :goto_0

    .line 913
    :pswitch_4
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 917
    .local v2, "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 919
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 920
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100299

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 921
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 922
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 923
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 924
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 925
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 926
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 927
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 930
    .end local v2    # "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :pswitch_5
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 934
    .local v1, "eapAkaAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 936
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 937
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100299

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 939
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 940
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 941
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 942
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 943
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 944
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 7

    .prologue
    const v6, 0x7f100292

    const/4 v5, 0x0

    .line 985
    const/4 v0, 0x0

    .line 987
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100290

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget v3, v3, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 990
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 993
    :cond_0
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 994
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 996
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100293

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 997
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 998
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100294

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 999
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1000
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100295

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1002
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1003
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100296

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1004
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1005
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100297

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1006
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1008
    :cond_1
    if-eqz v0, :cond_5

    .line 1009
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 1010
    .local v2, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_5

    .line 1011
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_2

    .line 1012
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    :cond_2
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    .line 1019
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    :cond_3
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1023
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1024
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1027
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    .end local v1    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_5
    :goto_0
    return-void

    .line 1032
    :cond_6
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 10

    .prologue
    const v9, 0x7f1002a9

    const v8, 0x7f10028c

    const v7, 0x7f10028b

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1037
    const/4 v0, 0x0

    .line 1039
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100288

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget v3, v3, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1042
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1045
    :cond_0
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1046
    invoke-direct {p0, v7, v6}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1047
    invoke-direct {p0, v8, v6}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1048
    invoke-direct {p0, v9, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1049
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 1050
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10028d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1051
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1052
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10028e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1053
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1054
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10028f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1055
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1057
    :cond_1
    if-eqz v0, :cond_2

    .line 1058
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 1059
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    .line 1060
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_2
    :goto_0
    return-void

    .line 1065
    :cond_3
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1066
    invoke-direct {p0, v7, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1067
    invoke-direct {p0, v8, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1068
    invoke-direct {p0, v9, v6}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1070
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 1071
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1002aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 1072
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1074
    :cond_4
    if-eqz v0, :cond_2

    .line 1075
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1076
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 1077
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1081
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_5
    invoke-direct {p0, v7, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1082
    invoke-direct {p0, v8, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1083
    invoke-direct {p0, v9, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setVisibility(II)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 12

    .prologue
    const v11, 0x7f100281

    const v10, 0x7f10027c

    const/16 v7, 0x8

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 717
    iget-boolean v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v4, :cond_0

    .line 719
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v6, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v4, v5, v6}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 819
    :goto_0
    return-void

    .line 724
    :cond_0
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v4, :cond_1

    .line 725
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 728
    :cond_1
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v4, :cond_2

    .line 731
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f1001bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 732
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 733
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f100275

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 736
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget v4, v4, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v4, v9, :cond_2

    .line 737
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v5, 0x7f090590

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 741
    :cond_2
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 742
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 745
    :cond_3
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 747
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v4, :cond_8

    .line 748
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 749
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->checkEapSimInfo()V

    .line 750
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v2, "methodarray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 752
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 753
    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_4
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 756
    const-string v4, "AKA"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    .line 760
    .end local v2    # "methodarray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v6, 0x1090008

    iget-object v7, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    .line 763
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 765
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f100282

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 766
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 767
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 768
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f100283

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 769
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f10029a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 770
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f100284

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 771
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f100285

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 772
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f100286

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 773
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f100287

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 775
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v5, "CACERT_"

    invoke-direct {p0, v4, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 776
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v5, "USRPKEY_"

    invoke-direct {p0, v4, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 779
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget v4, v4, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v4, v9, :cond_7

    .line 780
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 781
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 782
    .local v0, "eapMethod":I
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    .line 783
    .local v3, "phase2Method":I
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 784
    invoke-direct {p0, v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 785
    packed-switch v0, :pswitch_data_0

    .line 803
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 806
    :goto_1
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 807
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 808
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 787
    :pswitch_0
    packed-switch v3, :pswitch_data_1

    .line 798
    :pswitch_1
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid phase 2 method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 789
    :pswitch_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 792
    :pswitch_3
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 795
    :pswitch_4
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 813
    .end local v0    # "eapMethod":I
    .end local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v3    # "phase2Method":I
    :cond_7
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 814
    invoke-direct {p0, v8}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 817
    :cond_8
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 787
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 649
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 713
    :goto_0
    return v10

    .line 651
    :cond_0
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 652
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0905c7

    goto :goto_0

    .line 654
    :cond_1
    invoke-direct {p0, v7}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 655
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_2

    .line 656
    const v10, 0x7f0905c7

    goto :goto_0

    .line 659
    :cond_2
    const/4 v9, -0x1

    .line 661
    .local v9, "networkPrefixLength":I
    :try_start_0
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 662
    if-ltz v9, :cond_3

    const/16 v10, 0x20

    if-le v9, v10, :cond_4

    .line 663
    :cond_3
    const v10, 0x7f0905ca

    goto :goto_0

    .line 665
    :cond_4
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_1
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 673
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 676
    :try_start_1
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 677
    .local v8, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 678
    .local v0, "addr":[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 679
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 691
    .end local v0    # "addr":[B
    .end local v8    # "netPart":Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "dns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 694
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 696
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0905cc

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :goto_3
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 706
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-direct {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 708
    if-nez v2, :cond_9

    .line 709
    const v10, 0x7f0905c9

    goto/16 :goto_0

    .line 666
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 668
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0905d2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 684
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v4}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 685
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v5, :cond_6

    .line 686
    const v10, 0x7f0905c8

    goto/16 :goto_0

    .line 688
    :cond_6
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 698
    .end local v5    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v1    # "dns":Ljava/lang/String;
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_7
    invoke-direct {p0, v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 699
    if-nez v2, :cond_8

    .line 700
    const v10, 0x7f0905c9

    goto/16 :goto_0

    .line 702
    :cond_8
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 711
    :cond_9
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 681
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v10

    goto :goto_2

    .line 680
    :catch_2
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController$1;-><init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1137
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1142
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 5

    .prologue
    .line 429
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 430
    .local v2, "submit":Landroid/widget/Button;
    if-nez v2, :cond_0

    .line 453
    :goto_0
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x0

    .line 433
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 435
    .local v1, "passwordInvalid":Z
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 438
    :cond_2
    const/4 v1, 0x1

    .line 441
    :cond_3
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget v3, v3, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    .line 444
    :cond_6
    const/4 v0, 0x0

    .line 452
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 446
    :cond_7
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 447
    const/4 v0, 0x1

    goto :goto_1

    .line 449
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v10, -0x1

    const/16 v13, 0x22

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 456
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget v9, v9, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v9, v10, :cond_0

    iget-boolean v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v9, :cond_0

    .line 457
    const/4 v2, 0x0

    .line 588
    :goto_0
    return-object v2

    .line 460
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 462
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    if-nez v9, :cond_2

    .line 463
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 466
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 467
    iput-boolean v12, v2, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 468
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    iget v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSelectedIbssChannelPos:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiChannel;

    iget v9, v9, Landroid/net/wifi/WifiChannel;->freqMHz:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 484
    :goto_1
    iget v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v9, :pswitch_data_0

    .line 581
    const/4 v2, 0x0

    goto :goto_0

    .line 471
    :cond_1
    iput-boolean v12, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 473
    :cond_2
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget v9, v9, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    if-ne v9, v10, :cond_3

    .line 474
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget-object v9, v9, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v9}, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 476
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget-boolean v9, v9, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->isIBSS:Z

    iput-boolean v9, v2, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 477
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget v9, v9, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->frequency:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I

    goto :goto_1

    .line 479
    :cond_3
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget v9, v9, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->networkId:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 480
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget-boolean v9, v9, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->isIBSS:Z

    iput-boolean v9, v2, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 481
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;

    iget v9, v9, Lcom/flyme/DeviceOriginalSettings/wifi/AccessPoint;->frequency:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I

    goto :goto_1

    .line 486
    :pswitch_0
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 584
    :cond_4
    :goto_2
    new-instance v9, Landroid/net/IpConfiguration;

    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v11, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v12, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v13, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto/16 :goto_0

    .line 490
    :pswitch_1
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 491
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 492
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9, v12}, Ljava/util/BitSet;->set(I)V

    .line 493
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 494
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 495
    .local v4, "length":I
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, "password":Ljava/lang/String;
    const/16 v9, 0xa

    if-eq v4, v9, :cond_5

    const/16 v9, 0x1a

    if-eq v4, v9, :cond_5

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_6

    :cond_5
    const-string v9, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 499
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v9, v11

    goto :goto_2

    .line 501
    :cond_6
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    goto :goto_2

    .line 507
    .end local v4    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v12}, Ljava/util/BitSet;->set(I)V

    .line 508
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 509
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 510
    .restart local v5    # "password":Ljava/lang/String;
    const-string v9, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 511
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 513
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 519
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_3
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 520
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v14}, Ljava/util/BitSet;->set(I)V

    .line 521
    new-instance v9, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v9}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 522
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 523
    .local v3, "eapMethod":I
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 524
    .local v6, "phase2Method":I
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 525
    packed-switch v3, :pswitch_data_1

    .line 556
    :pswitch_4
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 559
    :goto_3
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 560
    .local v0, "caCert":Ljava/lang/String;
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v0, ""

    .line 561
    :cond_8
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 562
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 563
    .local v1, "clientCert":Ljava/lang/String;
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v1, ""

    .line 564
    :cond_9
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 565
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 566
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 569
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 572
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 573
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 530
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    :pswitch_5
    packed-switch v6, :pswitch_data_2

    .line 541
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown phase2 method"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 532
    :pswitch_6
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 535
    :pswitch_7
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 538
    :pswitch_8
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 547
    :pswitch_9
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 548
    .local v7, "selectedSimCardName":Ljava/lang/String;
    iget-object v9, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    .line 550
    .local v8, "selectedSimCardNumber":I
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "selectedSimCardNumber is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    .line 552
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 577
    .end local v7    # "selectedSimCardName":Ljava/lang/String;
    .end local v8    # "selectedSimCardNumber":I
    .restart local v0    # "caCert":Ljava/lang/String;
    .restart local v1    # "clientCert":Ljava/lang/String;
    :cond_a
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 525
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 530
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 421
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 422
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1127
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v6, 0x7f1002a6

    const v5, 0x7f1002a3

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1151
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f100275

    if-ne v1, v2, :cond_2

    .line 1152
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1153
    .local v0, "pos":I
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1157
    if-ltz v0, :cond_0

    .line 1158
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1173
    .end local v0    # "pos":I
    .end local p1    # "view":Landroid/widget/CompoundButton;
    :cond_0
    :goto_1
    return-void

    .line 1153
    .restart local v0    # "pos":I
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1160
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f1002a2

    if-ne v1, v2, :cond_4

    .line 1161
    if-eqz p2, :cond_3

    .line 1162
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1164
    :cond_3
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1166
    :cond_4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f1002a5

    if-ne v1, v2, :cond_0

    .line 1167
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1168
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1170
    :cond_5
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1177
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1178
    iput p3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1179
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1189
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1190
    return-void

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1181
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1183
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1184
    :cond_2
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 1185
    iput p3, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->mSelectedIbssChannelPos:I

    goto :goto_0

    .line 1187
    :cond_3
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1195
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1147
    return-void
.end method

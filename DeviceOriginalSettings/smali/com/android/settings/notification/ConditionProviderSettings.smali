.class public Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;
.super Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings;
.source "ConditionProviderSettings.java"


# static fields
.field private static final CONFIG:Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->TAG:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->getConditionProviderConfig()Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->CONFIG:Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method private static getConditionProviderConfig()Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;-><init>()V

    .line 32
    .local v0, "c":Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;
    sget-object v1, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 33
    const-string v1, "enabled_condition_providers"

    iput-object v1, v0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 34
    const-string v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 35
    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 36
    const-string v1, "condition provider"

    iput-object v1, v0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 37
    const v1, 0x7f090c5a

    iput v1, v0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;->warningDialogTitle:I

    .line 38
    const v1, 0x7f090c5b

    iput v1, v0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;->warningDialogSummary:I

    .line 39
    const v1, 0x7f090c59

    iput v1, v0, Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;->emptyText:I

    .line 40
    return-object v0
.end method

.method public static getEnabledProviderCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->CONFIG:Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->getEnabledServicesCount(Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getProviderCount(Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 49
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->CONFIG:Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->getServicesCount(Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected getConfig()Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/notification/ConditionProviderSettings;->CONFIG:Lcom/flyme/DeviceOriginalSettings/notification/ManagedServiceSettings$Config;

    return-object v0
.end method
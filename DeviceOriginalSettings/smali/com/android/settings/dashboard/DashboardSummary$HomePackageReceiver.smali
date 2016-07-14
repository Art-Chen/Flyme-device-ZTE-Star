.class Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;

    # invokes: Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;->access$000(Lcom/flyme/DeviceOriginalSettings/dashboard/DashboardSummary;Landroid/content/Context;)V

    .line 65
    return-void
.end method

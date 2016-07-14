.class Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;
.super Landroid/database/ContentObserver;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceProfileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;


# direct methods
.method public constructor <init>(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;->this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    .line 126
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary$PerformanceProfileObserver;->this$0:Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->updatePerformanceValue()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;->access$100(Lcom/flyme/DeviceOriginalSettings/fuelgauge/PowerUsageSummary;)V

    .line 132
    return-void
.end method

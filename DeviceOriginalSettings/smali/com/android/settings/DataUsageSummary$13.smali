.class Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$13;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$13;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$13;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChart:Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1500(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1000(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;J)V

    .line 1400
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$13;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$13;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChart:Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1500(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2600(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;J)V

    .line 1395
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$13;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$LimitEditorFragment;->show(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V

    .line 1410
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$13;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$WarningEditorFragment;->show(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V

    .line 1405
    return-void
.end method

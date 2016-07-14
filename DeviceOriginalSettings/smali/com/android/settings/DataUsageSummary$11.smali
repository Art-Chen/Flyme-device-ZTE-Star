.class Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/flyme/DeviceOriginalSettings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1325
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/net/ChartDataLoader;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1700(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/flyme/DeviceOriginalSettings/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/flyme/DeviceOriginalSettings/net/ChartData;)V
    .locals 2
    .param p2, "data"    # Lcom/flyme/DeviceOriginalSettings/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/net/ChartData;",
            ">;",
            "Lcom/flyme/DeviceOriginalSettings/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1330
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/flyme/DeviceOriginalSettings/net/ChartData;>;"
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # setter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChartData:Lcom/flyme/DeviceOriginalSettings/net/ChartData;
    invoke-static {v0, p2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1802(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;Lcom/flyme/DeviceOriginalSettings/net/ChartData;)Lcom/flyme/DeviceOriginalSettings/net/ChartData;

    .line 1331
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChart:Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1500(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChartData:Lcom/flyme/DeviceOriginalSettings/net/ChartData;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1800(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/flyme/DeviceOriginalSettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1332
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChart:Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1500(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChartData:Lcom/flyme/DeviceOriginalSettings/net/ChartData;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1800(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/flyme/DeviceOriginalSettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1335
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    const/4 v1, 0x1

    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$800(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;Z)V

    .line 1336
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1900(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V

    .line 1339
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChartData:Lcom/flyme/DeviceOriginalSettings/net/ChartData;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1800(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$2000(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1342
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1322
    check-cast p2, Lcom/flyme/DeviceOriginalSettings/net/ChartData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->onLoadFinished(Landroid/content/Loader;Lcom/flyme/DeviceOriginalSettings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/flyme/DeviceOriginalSettings/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1346
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # setter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChartData:Lcom/flyme/DeviceOriginalSettings/net/ChartData;
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1802(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;Lcom/flyme/DeviceOriginalSettings/net/ChartData;)Lcom/flyme/DeviceOriginalSettings/net/ChartData;

    .line 1347
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChart:Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1500(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1348
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$11;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mChart:Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$1500(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1349
    return-void
.end method

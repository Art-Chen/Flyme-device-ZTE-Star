.class Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$2;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$2;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 457
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 462
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 463
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$2;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$000(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 465
    :catch_0
    move-exception v0

    goto :goto_0

    .line 464
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 457
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$2;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$2;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    # invokes: Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->access$100(Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;)V

    .line 475
    :cond_0
    return-void
.end method

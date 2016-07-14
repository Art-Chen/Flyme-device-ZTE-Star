.class Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->onResume()V
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
    .line 449
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/DataUsageSummary;->highlightViewIfNeeded()V

    .line 453
    return-void
.end method

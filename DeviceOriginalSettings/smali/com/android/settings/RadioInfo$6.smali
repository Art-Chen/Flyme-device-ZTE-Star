.class Lcom/flyme/DeviceOriginalSettings/RadioInfo$6;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$6;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$6;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$6;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$6;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->httpClientTest()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$3200(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V

    .line 807
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$6;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$6;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 808
    return-void
.end method

.class Lcom/flyme/DeviceOriginalSettings/RadioInfo$3;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$3;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$3;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$2500(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$3;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$2400(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$3;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$2700(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$3;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$2600(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$3;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$2900(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$3;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$2800(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    return-void
.end method

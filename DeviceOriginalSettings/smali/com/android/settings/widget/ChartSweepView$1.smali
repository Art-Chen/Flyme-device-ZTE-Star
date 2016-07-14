.class Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView$1;
.super Ljava/lang/Object;
.source "ChartSweepView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView$1;->this$0:Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView$1;->this$0:Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView;

    # invokes: Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView;->dispatchRequestEdit()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView;->access$000(Lcom/flyme/DeviceOriginalSettings/widget/ChartSweepView;)V

    .line 154
    return-void
.end method

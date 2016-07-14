.class Lcom/flyme/DeviceOriginalSettings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/MasterClear;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/MasterClear$1;->this$0:Lcom/flyme/DeviceOriginalSettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/MasterClear$1;->this$0:Lcom/flyme/DeviceOriginalSettings/MasterClear;

    const/16 v1, 0x37

    # invokes: Lcom/flyme/DeviceOriginalSettings/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/MasterClear;->access$000(Lcom/flyme/DeviceOriginalSettings/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/MasterClear$1;->this$0:Lcom/flyme/DeviceOriginalSettings/MasterClear;

    # invokes: Lcom/flyme/DeviceOriginalSettings/MasterClear;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/MasterClear;->access$100(Lcom/flyme/DeviceOriginalSettings/MasterClear;)V

    .line 121
    :cond_0
    return-void
.end method

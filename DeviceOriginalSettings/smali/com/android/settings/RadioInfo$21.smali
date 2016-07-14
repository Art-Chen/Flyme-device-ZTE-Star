.class Lcom/flyme/DeviceOriginalSettings/RadioInfo$21;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/RadioInfo;
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
    .line 1072
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$21;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$21;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    # invokes: Lcom/flyme/DeviceOriginalSettings/RadioInfo;->refreshSmsc()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->access$4500(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V

    .line 1075
    return-void
.end method

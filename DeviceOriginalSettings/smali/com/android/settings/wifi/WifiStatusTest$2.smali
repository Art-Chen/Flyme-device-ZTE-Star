.class Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$2;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$2;->this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest$2;->this$0:Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;

    # invokes: Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->updatePingState()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;->access$500(Lcom/flyme/DeviceOriginalSettings/wifi/WifiStatusTest;)V

    .line 178
    return-void
.end method

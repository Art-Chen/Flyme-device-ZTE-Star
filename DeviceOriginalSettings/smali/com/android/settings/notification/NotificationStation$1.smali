.class Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;

    # invokes: Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;->refreshList()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;->access$000(Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;)V

    .line 81
    return-void
.end method

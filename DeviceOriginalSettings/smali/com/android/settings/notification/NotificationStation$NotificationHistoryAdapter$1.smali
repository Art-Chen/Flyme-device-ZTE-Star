.class Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter;

.field final synthetic val$info:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter;Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter$1;->this$1:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter$1;->val$info:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 324
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter$1;->this$1:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$NotificationHistoryAdapter$1;->val$info:Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    # invokes: Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;->startApplicationDetailsActivity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;->access$400(Lcom/flyme/DeviceOriginalSettings/notification/NotificationStation;Ljava/lang/String;)V

    .line 325
    return-void
.end method

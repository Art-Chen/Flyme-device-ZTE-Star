.class Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$1;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->access$100(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->mAppRow:Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/notification/AppNotificationSettings;)Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;

    move-result-object v1

    iget-object v1, v1, Lcom/flyme/DeviceOriginalSettings/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

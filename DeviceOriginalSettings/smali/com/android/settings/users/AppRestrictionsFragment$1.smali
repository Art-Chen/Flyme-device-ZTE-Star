.class Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;

    # getter for: Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->mAppListChanged:Z
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->access$000(Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->applyUserAppsStates()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->access$100(Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;)V

    .line 129
    :cond_0
    return-void
.end method

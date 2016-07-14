.class Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$3;
.super Ljava/lang/Thread;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->onPause()V
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
    .line 304
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$3;->this$0:Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment$3;->this$0:Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->applyUserAppsStates()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;->access$100(Lcom/flyme/DeviceOriginalSettings/users/AppRestrictionsFragment;)V

    .line 307
    return-void
.end method

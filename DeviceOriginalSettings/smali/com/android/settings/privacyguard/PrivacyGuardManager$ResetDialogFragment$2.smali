.class Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;
.super Ljava/lang/Object;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;->this$1:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 341
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;->this$1:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->this$0:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;->access$200(Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 342
    .local v0, "app":Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$AppInfo;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    goto :goto_0

    .line 344
    .end local v0    # "app":Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$AppInfo;
    :cond_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;->this$1:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->this$0:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;->access$300(Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 345
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;->this$1:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->this$0:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;

    # getter for: Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardAppListAdapter;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;->access$400(Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardManager;)Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardAppListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    .line 346
    return-void
.end method

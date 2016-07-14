.class Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestActiveAppGroupsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

.field final synthetic val$notificationGroups:[Landroid/app/NotificationGroup;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;[Landroid/app/NotificationGroup;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;->val$notificationGroups:[Landroid/app/NotificationGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 815
    if-eqz p3, :cond_0

    .line 816
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    new-instance v1, Landroid/app/ProfileGroup;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;->val$notificationGroups:[Landroid/app/NotificationGroup;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/app/ProfileGroup;-><init>(Ljava/util/UUID;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Profile;->addProfileGroup(Landroid/app/ProfileGroup;)V

    .line 820
    :goto_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->access$500(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    .line 821
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->rebuildItemList()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->access$600(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    .line 822
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$15;->val$notificationGroups:[Landroid/app/NotificationGroup;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Profile;->removeProfileGroup(Ljava/util/UUID;)V

    goto :goto_0
.end method

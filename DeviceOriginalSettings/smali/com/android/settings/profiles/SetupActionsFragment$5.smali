.class Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$5;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestLockscreenModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$5;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 506
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$5;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    # getter for: Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I
    invoke-static {}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->access$700()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setScreenLockMode(I)V

    .line 507
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$5;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->access$500(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;)V

    .line 508
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$5;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 509
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 510
    return-void
.end method

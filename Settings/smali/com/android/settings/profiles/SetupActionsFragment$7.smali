.class Lcom/android/settings/profiles/SetupActionsFragment$7;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/SetupActionsFragment;->requestRingModeDialog(Landroid/app/RingModeSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/SetupActionsFragment;

.field final synthetic val$setting:Landroid/app/RingModeSettings;

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/app/RingModeSettings;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$setting:Landroid/app/RingModeSettings;

    iput-object p3, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 601
    packed-switch p2, :pswitch_data_0

    .line 618
    :goto_0
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$setting:Landroid/app/RingModeSettings;

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setRingMode(Landroid/app/RingModeSettings;)V

    .line 619
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 620
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/android/settings/profiles/SetupActionsFragment;->access$500(Lcom/android/settings/profiles/SetupActionsFragment;)V

    .line 621
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 622
    return-void

    .line 603
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$setting:Landroid/app/RingModeSettings;

    invoke-virtual {v0, v2}, Landroid/app/RingModeSettings;->setOverride(Z)V

    .line 604
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$setting:Landroid/app/RingModeSettings;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$values:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/RingModeSettings;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$setting:Landroid/app/RingModeSettings;

    invoke-virtual {v0, v2}, Landroid/app/RingModeSettings;->setOverride(Z)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$setting:Landroid/app/RingModeSettings;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$values:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/RingModeSettings;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$setting:Landroid/app/RingModeSettings;

    invoke-virtual {v0, v2}, Landroid/app/RingModeSettings;->setOverride(Z)V

    .line 612
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$setting:Landroid/app/RingModeSettings;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$values:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/RingModeSettings;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$7;->val$setting:Landroid/app/RingModeSettings;

    invoke-virtual {v0, v3}, Landroid/app/RingModeSettings;->setOverride(Z)V

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

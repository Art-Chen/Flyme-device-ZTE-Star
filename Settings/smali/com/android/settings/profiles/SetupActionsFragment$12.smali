.class Lcom/android/settings/profiles/SetupActionsFragment$12;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/SetupActionsFragment;->requestProfileName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/SetupActionsFragment;

.field final synthetic val$entry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/settings/profiles/SetupActionsFragment$12;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/settings/profiles/SetupActionsFragment$12;->val$entry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 762
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$12;->val$entry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$12;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v0}, Landroid/app/Profile;->setName(Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$12;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/android/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 765
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment$12;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    # invokes: Lcom/android/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v1}, Lcom/android/settings/profiles/SetupActionsFragment;->access$500(Lcom/android/settings/profiles/SetupActionsFragment;)V

    .line 766
    return-void
.end method

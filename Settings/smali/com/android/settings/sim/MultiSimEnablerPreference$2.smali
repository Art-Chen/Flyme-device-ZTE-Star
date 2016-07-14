.class Lcom/android/settings/sim/MultiSimEnablerPreference$2;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/MultiSimEnablerPreference;->createEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

.field final synthetic val$nameText:Landroid/widget/EditText;

.field final synthetic val$tintSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/MultiSimEnablerPreference;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    iput-object p2, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->val$nameText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 196
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$100(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->val$nameText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$200(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v4}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$100(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v5}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$100(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;I)I

    .line 200
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 201
    .local v2, "tintSelected":I
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$100(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 202
    .local v0, "subscriptionId":I
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mTintArr:[I
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$300(Lcom/android/settings/sim/MultiSimEnablerPreference;)[I

    move-result-object v3

    aget v1, v3, v2

    .line 203
    .local v1, "tint":I
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$100(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionInfo;->setIconTint(I)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings/sim/MultiSimEnablerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->access$200(Lcom/android/settings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    .line 206
    iget-object v3, p0, Lcom/android/settings/sim/MultiSimEnablerPreference$2;->this$0:Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/settings/sim/MultiSimEnablerPreference;->update()V

    .line 207
    return-void
.end method

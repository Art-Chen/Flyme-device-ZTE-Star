.class Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$13;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;->requestProfileName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$13;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$13;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 784
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v0, v3

    .line 787
    .local v0, "empty":Z
    :goto_0
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/profiles/SetupActionsFragment$13;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 788
    return-void

    .end local v0    # "empty":Z
    :cond_1
    move v0, v2

    .line 785
    goto :goto_0

    .restart local v0    # "empty":Z
    :cond_2
    move v3, v2

    .line 787
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 775
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 780
    return-void
.end method

.class Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect$3;
.super Ljava/lang/Object;
.source "NFCProfileSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;->showProfileSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;

.field final synthetic val$profiles:[Landroid/app/Profile;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;[Landroid/app/Profile;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect$3;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect$3;->val$profiles:[Landroid/app/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 104
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect$3;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;

    # getter for: Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;->currentChoice:I
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;->access$000(Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect$3;->val$profiles:[Landroid/app/Profile;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect$3;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;

    # getter for: Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;->currentChoice:I
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;->access$000(Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;)I

    move-result v2

    aget-object v0, v1, v2

    .line 106
    .local v0, "profile":Landroid/app/Profile;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect$3;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;

    # getter for: Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;->mProfileUuid:Ljava/util/UUID;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;->access$100(Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Profile;->addSecondaryUuid(Ljava/util/UUID;)V

    .line 107
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect$3;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;

    # getter for: Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;->access$200(Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;)Landroid/app/ProfileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 108
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect$3;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;

    const v2, 0x7f090017

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 110
    .end local v0    # "profile":Landroid/app/Profile;
    :cond_0
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect$3;->this$0:Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/profiles/NFCProfileSelect;->finish()V

    .line 111
    return-void
.end method

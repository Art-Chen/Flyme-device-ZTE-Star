.class Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$1;
.super Landroid/os/Handler;
.source "BlacklistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$1;->this$0:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 231
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 232
    .local v0, "lookupIndex":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$1;->this$0:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;

    # getter for: Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mContactNameCache:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->access$200(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$1;->this$0:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;

    # getter for: Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mRequestedLookups:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->access$100(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_0

    const-string v1, ""

    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v2, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$1;->this$0:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;

    # getter for: Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->mRequestedLookups:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->access$100(Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 236
    iget-object v2, p0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter$1;->this$0:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-virtual {v2}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->notifyDataSetChanged()V

    .line 237
    return-void
.end method

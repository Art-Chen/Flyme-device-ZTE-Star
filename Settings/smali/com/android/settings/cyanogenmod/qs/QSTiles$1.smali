.class Lcom/android/settings/cyanogenmod/qs/QSTiles$1;
.super Ljava/lang/Object;
.source "QSTiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/qs/QSTiles;->addTile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/qs/QSTiles;

.field final synthetic val$tilesList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/qs/QSTiles;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/qs/QSTiles$1;->this$0:Lcom/android/settings/cyanogenmod/qs/QSTiles;

    iput-object p2, p0, Lcom/android/settings/cyanogenmod/qs/QSTiles$1;->val$tilesList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/qs/QSTiles$1;->this$0:Lcom/android/settings/cyanogenmod/qs/QSTiles;

    # getter for: Lcom/android/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/settings/cyanogenmod/qs/DraggableGridView;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/qs/QSTiles;->access$000(Lcom/android/settings/cyanogenmod/qs/QSTiles;)Lcom/android/settings/cyanogenmod/qs/DraggableGridView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/qs/DraggableGridView;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 170
    .local v1, "newPosition":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/qs/QSTiles$1;->val$tilesList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;

    .line 173
    .local v0, "holder":Lcom/android/settings/cyanogenmod/qs/QSTileHolder;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/qs/QSTiles$1;->this$0:Lcom/android/settings/cyanogenmod/qs/QSTiles;

    # getter for: Lcom/android/settings/cyanogenmod/qs/QSTiles;->mDraggableGridView:Lcom/android/settings/cyanogenmod/qs/DraggableGridView;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/qs/QSTiles;->access$000(Lcom/android/settings/cyanogenmod/qs/QSTiles;)Lcom/android/settings/cyanogenmod/qs/DraggableGridView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/qs/QSTiles$1;->this$0:Lcom/android/settings/cyanogenmod/qs/QSTiles;

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;->value:Ljava/lang/String;

    # invokes: Lcom/android/settings/cyanogenmod/qs/QSTiles;->buildQSTile(Ljava/lang/String;)Landroid/view/View;
    invoke-static {v3, v4}, Lcom/android/settings/cyanogenmod/qs/QSTiles;->access$100(Lcom/android/settings/cyanogenmod/qs/QSTiles;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/cyanogenmod/qs/DraggableGridView;->addView(Landroid/view/View;I)V

    .line 174
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/qs/QSTiles$1;->this$0:Lcom/android/settings/cyanogenmod/qs/QSTiles;

    # invokes: Lcom/android/settings/cyanogenmod/qs/QSTiles;->updateAddDeleteState()V
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/qs/QSTiles;->access$200(Lcom/android/settings/cyanogenmod/qs/QSTiles;)V

    .line 175
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/qs/QSTiles$1;->this$0:Lcom/android/settings/cyanogenmod/qs/QSTiles;

    # invokes: Lcom/android/settings/cyanogenmod/qs/QSTiles;->updateSettings()V
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/qs/QSTiles;->access$300(Lcom/android/settings/cyanogenmod/qs/QSTiles;)V

    .line 176
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 177
    return-void
.end method

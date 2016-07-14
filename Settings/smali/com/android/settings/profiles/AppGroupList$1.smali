.class Lcom/android/settings/profiles/AppGroupList$1;
.super Ljava/lang/Object;
.source "AppGroupList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/AppGroupList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/AppGroupList;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/AppGroupList;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/profiles/AppGroupList$1;->this$0:Lcom/android/settings/profiles/AppGroupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupList$1;->this$0:Lcom/android/settings/profiles/AppGroupList;

    # invokes: Lcom/android/settings/profiles/AppGroupList;->addAppGroup()V
    invoke-static {v0}, Lcom/android/settings/profiles/AppGroupList;->access$000(Lcom/android/settings/profiles/AppGroupList;)V

    .line 88
    return-void
.end method

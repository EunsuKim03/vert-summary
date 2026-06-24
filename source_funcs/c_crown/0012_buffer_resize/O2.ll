; ModuleID = 'benchmark/c_crown/0012_buffer_resize/buffer_processed.c'
source_filename = "benchmark/c_crown/0012_buffer_resize/buffer_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.buffer_t = type { i64, i8*, i8* }

; Function Attrs: nounwind uwtable
define dso_local i32 @buffer_resize(%struct.buffer_t* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, i64, ...) bitcast (i32 (...)* @nearest_multiple_of to i32 (i32, i64, ...)*)(i32 noundef 1024, i64 noundef %1) #6
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %0, i64 0, i32 0
  store i64 %4, i64* %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !11
  %8 = add nsw i64 %4, 1
  %9 = tail call i8* @realloc(i8* noundef %7, i64 noundef %8) #6
  %10 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %0, i64 0, i32 2
  store i8* %9, i8** %10, align 8, !tbaa !12
  store i8* %9, i8** %6, align 8, !tbaa !11
  %11 = icmp eq i8* %9, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, i8* %9, i64 %4
  store i8 0, i8* %13, align 1, !tbaa !13
  br label %14

14:                                               ; preds = %2, %12
  %15 = phi i32 [ 0, %12 ], [ -1, %2 ]
  ret i32 %15
}

declare i32 @nearest_multiple_of(...) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @buffer_append_n(%struct.buffer_t* nocapture noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !12
  %6 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %5) #7
  %7 = add i64 %6, %2
  %8 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %0, i64 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !5
  %10 = icmp ugt i64 %9, %7
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = tail call i32 (i32, i64, ...) bitcast (i32 (...)* @nearest_multiple_of to i32 (i32, i64, ...)*)(i32 noundef 1024, i64 noundef %7) #6
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %0, i64 0, i32 1
  %15 = load i8*, i8** %14, align 8, !tbaa !11
  %16 = add nsw i64 %13, 1
  %17 = tail call i8* @realloc(i8* noundef %15, i64 noundef %16) #6
  store i8* %17, i8** %4, align 8, !tbaa !12
  store i8* %17, i8** %14, align 8, !tbaa !11
  %18 = icmp eq i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds i8, i8* %17, i64 %13
  store i8 0, i8* %20, align 1, !tbaa !13
  br label %21

21:                                               ; preds = %3, %19
  %22 = phi i8* [ %17, %19 ], [ %5, %3 ]
  %23 = tail call i8* @strncat(i8* noundef nonnull dereferenceable(1) %22, i8* noundef %1, i64 noundef %2) #6
  br label %24

24:                                               ; preds = %21, %11
  %25 = phi i32 [ -1, %11 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare i8* @strncat(i8* noalias noundef returned, i8* noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @buffer_prepend(%struct.buffer_t* nocapture noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #7
  %4 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !12
  %6 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %5) #7
  %7 = add i64 %6, %3
  %8 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %0, i64 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !5
  %10 = icmp ugt i64 %9, %7
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (i32, i64, ...) bitcast (i32 (...)* @nearest_multiple_of to i32 (i32, i64, ...)*)(i32 noundef 1024, i64 noundef %7) #6
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.buffer_t, %struct.buffer_t* %0, i64 0, i32 1
  %15 = load i8*, i8** %14, align 8, !tbaa !11
  %16 = add nsw i64 %13, 1
  %17 = tail call i8* @realloc(i8* noundef %15, i64 noundef %16) #6
  store i8* %17, i8** %4, align 8, !tbaa !12
  store i8* %17, i8** %14, align 8, !tbaa !11
  %18 = icmp eq i8* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds i8, i8* %17, i64 %13
  store i8 0, i8* %20, align 1, !tbaa !13
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i8* [ %17, %19 ], [ %5, %2 ]
  %23 = getelementptr inbounds i8, i8* %22, i64 %3
  %24 = add i64 %3, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %22, i64 %24, i1 false)
  %25 = load i8*, i8** %4, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %1, i64 %3, i1 false)
  br label %26

26:                                               ; preds = %11, %21
  %27 = phi i32 [ 0, %21 ], [ -1, %11 ]
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !10, i64 16}
!13 = !{!8, !8, i64 0}

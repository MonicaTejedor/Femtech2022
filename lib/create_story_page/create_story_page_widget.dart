import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../my_stories_page/my_stories_page_widget.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateStoryPageWidget extends StatefulWidget {
  const CreateStoryPageWidget({Key? key}) : super(key: key);

  @override
  _CreateStoryPageWidgetState createState() => _CreateStoryPageWidgetState();
}

class _CreateStoryPageWidgetState extends State<CreateStoryPageWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
          child: Text(
            'Crear historia nueva',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF4B39EF),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.close_rounded,
                color: Color(0xFF95A1AC),
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).lineColor,
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: TextFormField(
              controller: textController1,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Título ',
                hintStyle: FlutterFlowTheme.of(context).bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFF2DFD7),
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFF2DFD7),
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).lineColor,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF736CED),
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.94,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: textController2,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Ingrese el texto aquí...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF95A1AC),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF1F4F8),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFF1F4F8),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 32, 20, 12),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                final storiesCreateData = createStoriesRecordData(
                  idStory: random_data.randomString(
                    0,
                    0,
                    true,
                    false,
                    true,
                  ),
                  contentStory: textController2!.text,
                  dateCreate: getCurrentTimestamp,
                  userStory: currentUserUid,
                  nameStory: textController1!.text,
                );
                await StoriesRecord.collection.doc().set(storiesCreateData);

                final allStoriesCreateData = createAllStoriesRecordData(
                  idStory: random_data.randomString(
                    0,
                    0,
                    true,
                    false,
                    true,
                  ),
                  nameStory: textController1!.text,
                  contentStory: textController2!.text,
                  dateCreate: getCurrentTimestamp,
                  userStory: currentUserDisplayName,
                  lovedStory: false,
                );
                await AllStoriesRecord.collection
                    .doc()
                    .set(allStoriesCreateData);
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyStoriesPageWidget(),
                  ),
                );
              },
              text: 'Crear',
              options: FFButtonOptions(
                width: 270,
                height: 50,
                color: Color(0xFF4B39EF),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

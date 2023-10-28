using {cap_app_pg as cpg} from '../db/Schema';

@path: 'Student'
service StudentService {


    entity Student as projection on cpg.Student;

    annotate Student with @odata.draft.enabled;
}
